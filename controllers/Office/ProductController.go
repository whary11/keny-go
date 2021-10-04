package Office

import (
	"keny-go/models"
	"keny-go/utils"
	"net/http"

	"github.com/gin-gonic/gin"
)

func CreateProduct(c *gin.Context) {
	var product models.Product

	if err := c.ShouldBindJSON(&product); err != nil {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusNotFound,
			"status":  false,
			"message": err.Error(),
			"data":    "",
		})
		return
	}
	product.GenearteSlug()
	validate, message := product.CreateProduct()
	if validate == false {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusInternalServerError,
			"status":  validate,
			"message": message,
		})

		return
	}

	utils.GetResponse(c, http.StatusOK, utils.Response{
		"code":    http.StatusOK,
		"status":  validate,
		"message": message,
		//"data":    product,
	})
}
