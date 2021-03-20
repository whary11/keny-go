package middlewares

import (
	"keny-go/models"
	"keny-go/utils"
	"net/http"
	"strings"

	"github.com/gin-gonic/gin"
)

func Auth() gin.HandlerFunc {
	return func(c *gin.Context) {
		header := c.Request.Header["Authorization"]
		if len(header) > 0 {
			bearerToken := header[0]
			// fmt.Println(bearerToken)
			token := strings.Split(bearerToken, " ")
			if len(token) == 2 && token[0] == "Bearer" {
				_, validate := utils.VerifiedToken(token[1])
				if validate {
					var claim utils.Claim
					claim.GetContainJwt(token[1])
					if claim.Sub > 0 {
						var a models.Auth
						a.Uuid = claim.Jti
						if a.ValidateTokenByUuid() {
							c.Next()
							return
						}
					}
				}
			}
		}
		c.AbortWithStatusJSON(http.StatusUnauthorized, utils.Response{
			"code":    http.StatusUnauthorized,
			"status":  false,
			"message": "No autorizado",
		})

	}
}
