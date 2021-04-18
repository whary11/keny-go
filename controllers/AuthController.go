package controllers

import (
	"keny-go/models"
	"keny-go/utils"
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/uniplaces/carbon"
)

var (
	expires        *carbon.Carbon
	expiresRefresh *carbon.Carbon
)

func init() {
	expires = carbon.Now().AddDay()
	expiresRefresh = carbon.Now().AddWeek()

}

func Login(c *gin.Context) {
	var login utils.Login

	var user models.User
	if err := c.ShouldBindJSON(&login); err != nil {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusInternalServerError,
			"status":  false,
			"message": err.Error(),
		})
		return
	}
	// var status bool

	//cunsultar un usario
	user.Email = login.Email
	err := user.GetUserByEmail()
	if err != nil {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusOK,
			"status":  false,
			"message": "Error al consultar el usuario " + err.Error(),
		})
		return
	}
	//validar password
	if !utils.CheckPasswordHash(login.Password, user.Password) {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusOK,
			"status":  false,
			"message": "Credenciales incorrectas",
		})
		return
	}
	// generar token

	// Fecha de expiración del token
	// expiresAt := time.Unix(expires, 0)

	// Fecha de expiración del refresh token
	// expiresAtRefresh := time.Unix(expiresRefresh, 0)

	var model utils.Claim
	model.Sub = user.Id
	// generar token
	token, err := model.GenerateJWT(expires.Unix())
	if err != nil {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusOK,
			"status":  false,
			"message": "Error al generar token de acceso " + err.Error(),
		})
		return
	}
	var modelRefresh utils.Claim
	modelRefresh.Sub = user.Id
	// generar refresh token
	tokenRefresh, err := modelRefresh.GenerateJWT(expiresRefresh.Unix())

	if err != nil {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusOK,
			"status":  false,
			"message": "Error al generar token de acceso " + err.Error(),
		})
		return
	}

	var auth models.Auth
	auth.Uuid = model.Jti
	auth.TokenExpires = expires.DateTimeString()
	auth.RefreshTokenExp = expiresRefresh.DateTimeString()
	auth.UserId = user.Id

	validate, message := auth.SaveToken()
	if !validate {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusOK,
			"status":  false,
			"message": message,
		})
		return
	}

	utils.GetResponse(c, http.StatusOK, utils.Response{
		"code":          http.StatusOK,
		"status":        true,
		"expires_at":    expires.Unix(),
		"token":         token,
		"refresh_token": tokenRefresh,
		"message":       "Usuario logueado.",
	})
}
