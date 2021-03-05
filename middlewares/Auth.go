package middlewares

import (
	"keny-go/utils"
	"net/http"
	"strings"

	"github.com/gin-gonic/gin"
)

func Auth() gin.HandlerFunc {
	return func(c *gin.Context) {
		header := c.Request.Header["Authorization"]
		bearerToken := header[0]
		token := strings.Split(bearerToken, " ")
		if len(token) == 2 && token[0] == "Bearer" {
			_, validate := utils.VerifiedToken(token[1])
			if validate {
				c.Next()
				return
			}
		}
		c.AbortWithStatusJSON(http.StatusUnauthorized, utils.Response{
			"code":    http.StatusUnauthorized,
			"status":  false,
			"message": "No autorizado",
		})
	}
}
