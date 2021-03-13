package middlewares

import (
	"keny-go/models"
	"keny-go/utils"
	"net/http"

	"github.com/gin-gonic/gin"
)

func Cart() gin.HandlerFunc {
	return func(c *gin.Context) {
		var cart models.Cart
		if err := c.ShouldBindJSON(&cart); err != nil {
			c.AbortWithStatusJSON(http.StatusOK, utils.Response{
				"code":    http.StatusInternalServerError,
				"status":  false,
				"message": err.Error(),
				"data":    nil,
			})
			return
		}
		is_valid, available := models.ValidateStockReference(cart.ReferenceId)
		if !is_valid {
			c.AbortWithStatusJSON(http.StatusOK, utils.Response{
				"code":    http.StatusNotFound,
				"status":  is_valid,
				"message": "No hay disponibilidad de referencias.",
				"data":    available,
			})
			return
		}
		exist := cart.ValidateCart()
		if exist {
			c.Next()
			return
		}
		c.AbortWithStatusJSON(http.StatusOK, utils.Response{
			"code":    http.StatusNotFound,
			"status":  false,
			"message": "El carrito enviado no exite.",
			"data":    cart.Id,
		})
	}
}
