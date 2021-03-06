package utils

import (
	"crypto/rsa"
	"fmt"
	"io/ioutil"
	"sync"

	jwt "github.com/dgrijalva/jwt-go"
	"github.com/google/uuid"
)

type Claim struct {
	Sub int       `json:"sub"`
	Jti uuid.UUID `json:"jti"`
	jwt.StandardClaims
}

var (
	SignKey   *rsa.PrivateKey
	VerifyKey *rsa.PublicKey
	once      sync.Once
)

func init() {
	once.Do(func() {
		loadSignFiles()
	})
}

// loadSignFiles Carga la información de los certificados de firma y confirmación
func loadSignFiles() {
	signBytes, err := ioutil.ReadFile("./keys/private.key")
	if err != nil {
		fmt.Printf("Error al leer el archivo: %v", err)
	}

	SignKey, err = jwt.ParseRSAPrivateKeyFromPEM(signBytes)
	if err != nil {
		fmt.Printf("Error al leer el archivo: %v", err)
	}

	verifyBytes, err := ioutil.ReadFile("./keys/public.pub")
	if err != nil {
		fmt.Printf("Error al leer el archivo: %v", err)
	}

	VerifyKey, err = jwt.ParseRSAPublicKeyFromPEM(verifyBytes)
	if err != nil {
		fmt.Printf("Error al leer el archivo: %v", err)
	}
}

// generateJWT genera un token JWT nuevo
func (u *Claim) GenerateJWT(expiried int64) (string, error) {

	var token string
	u.Jti = uuid.New()
	u.StandardClaims = jwt.StandardClaims{
		// Tiempo de expiración del token: 1 semana
		ExpiresAt: expiried,
		Issuer:    "Keny",
	}

	// c := Claim   {
	// 	Usuario: u,
	// 	StandardClaims: jwt.StandardClaims{
	// 		// Tiempo de expiración del token: 1 semana
	// 		ExpiresAt: expiried,
	// 		Issuer:    "Keny",
	// 	},
	// }

	t := jwt.NewWithClaims(jwt.SigningMethodRS256, u)
	token, err := t.SignedString(SignKey)
	if err != nil {
		return "", err
	}
	return token, nil
}

func GetContainJwt(tokenJwt string) jwt.MapClaims {
	tokenString := tokenJwt
	// var res ContainsJwt
	claims := jwt.MapClaims{}
	token, err := jwt.ParseWithClaims(tokenString, claims, func(token *jwt.Token) (interface{}, error) {
		return []byte(``), nil
	})

	if err != nil {
		fmt.Println("Error: ", err.Error())
		fmt.Println(token.Valid)
	}
	// ... error handling
	// fmt.Println(token)
	// do something with decoded claims
	// for key, val := range claims {
	// fmt.Printf("Key: %v, value: %v\n", key, val)

	// fmt.Println(" sssss ", key, val)
	// fmt.Println(" sssssr ", val)
	// res["dd"] = val

	// }

	// fmt.Println(claims)

	return claims

}

func VerifiedToken(tokenString string) (string, bool) {
	verifyFunction := func(token *jwt.Token) (interface{}, error) {

		return VerifyKey, nil
	}

	texto := ""
	token, err := jwt.ParseWithClaims(tokenString, &Claim{}, verifyFunction)

	if err != nil {
		switch err.(type) {
		case *jwt.ValidationError:
			vErr := err.(*jwt.ValidationError)
			switch vErr.Errors {
			case jwt.ValidationErrorExpired:
				texto = "Su token ha expirado, por favor vuelva a ingresar"
			default:
				texto = "Error de validación del token"
			}
		default:
			texto = "Error al procesar el token"
		}

		return texto, false
	}

	if !token.Valid {
		return "Token no valido", token.Valid
	}

	return "Token válido", token.Valid

}

/*
 Cuando un usuario intente loguear en la app debe suceder lo siguiente

 1. Validar que sus credenciales sean correctas.
 2. Generar un token jwt encriptado con llave privada, con su respectivo vencimiento (Definir) y datos a poner el payload (debe ir la identidad del token en db ?).
 3. Generar un token jwt para refrescar el usuario.
 4. Guardar estos tokens en la DB de elección identificado cada uno para que al cerrar cesión solo se cierre sesión para un token y para todos los tokens del usuario.


 ((Problemas planteados))

 1. Como detectar que token de los que están en la db de ese usuario está llegando (desencriptar el de la debe y comparar, cuál es la mejor manera ?)


*/

/*
	Proceso de login

	1. Generar los token
	2. Devolver en el PAYLOAD del token el id del mismo en la db => Contra este se validará para tomar cualquer acción (Buscar este token y vefiricar su fecha de espiración por ejemplo).
	3. revisar este token de laravel

	eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI0MyIsImp0aSI6IjU5NmUyY2FhNDg3Mjk3ZjdhNGEwZDU5NzQ5NmMzNzY0ZjNkNjkyMDUwYmE5NGZhNDA2YzYzZTA1NjBmODEzZWFiNmQwNTE1ZDY5NTU4NTdiIiwiaWF0IjoxNjE0Njk1MjUxLCJuYmYiOjE2MTQ2OTUyNTEsImV4cCI6MTY0NjIzMTI1MSwic3ViIjoiMjE1Iiwic2NvcGVzIjpbXX0.ApriECxXbY9EUn1dJ1vbZVpaspS4BVYvec4Izs50KCB5LuNX5dYUCvNJ7vavaVRiopl8uyl3V6Di1Oq-1cGTT0dGY_pJzBICLR2L7KMpj-9P_IZWTFXhCmbmlq886K70CZDDglbkm7W5qo1sZmqffEb35l1gHRYc51uNzUxNIt3zVLZKeIO090kVB95Rg06YvmeHp_U-pMdci3E5seh_aZONbJIK1bqqnfzI-Tf9ZrX2-1t8-rRMdSjdZ6ad0zqfLdcvsazcnaJz0_CvYy2raPbJlSkb6KjQAlm7GGDXPr4-1yWLvbJKTs2mFNpo0eLKn0jwNmcAwD2LPUlrAJQ_EUBLr6VfL_066tDVFSPGskV9kd5xxfR2nPGCf_jUd-r_ltkuNKQ7qWJi3v7NTC5BkC4eOKPIJygRPQ82mY--JdJ64TtvkODdKAD5ZNzRVbV3YrgnmtPAmd9WyZbR4yPfzPxicdagoQuUyU5TBhSf7PXa0R0nGKg4e2bovSOeuUVJ2mNTQRgANYZo5JiXps3ILQKO8i3zCLTKnsSc6ciEn92iLzilp4CdZlZsWao7ITv1Opg2YdN3lo7JDEfMHSgeum9FPc0xHgVkQVz1Dub34JwLuDEgzgiR6S0NW9IqpcqyEqurescek3dniwMq_DRirV2rjNjrmQIR7kSDgdsrSDc

*/
