package utils

import (
	"crypto/rsa"
	"fmt"
	"io/ioutil"
	"sync"
	"time"

	jwt "github.com/dgrijalva/jwt-go"
)

type Model struct {
	FirstName string `json:"first_name"`
	Email     string `json:"email"`
	Password  string `json:"password,omitempty"`
}

type Claim struct {
	Usuario Model `json:"user"`
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
func GenerateJWT(u Model) (string, error) {
	var token string
	c := Claim{
		Usuario: u,
		StandardClaims: jwt.StandardClaims{
			// Tiempo de expiración del token: 1 semana
			ExpiresAt: time.Now().Add(time.Hour * 24 * 1).Unix(),
			Issuer:    "Keny",
		},
	}

	t := jwt.NewWithClaims(jwt.SigningMethodRS256, c)
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
		fmt.Println("Error: ", err)
		fmt.Println(token.Valid)

		// return res

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

	fmt.Println(token.Valid, err)

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
