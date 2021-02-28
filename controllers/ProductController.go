package controllers

import (
	"keny-go/models"
	"keny-go/utils"
	"net/http"

	"github.com/gin-gonic/gin"
)

func ProductDatail(c *gin.Context) {
	var product models.Product
	slug := c.Param("slug")
	product.Slug = slug

	status, message := product.GetProductBySlug()

	if !status {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"status":  status,
			"message": message,
			"data":    nil,
		})
		return
	}
	utils.GetResponse(c, http.StatusOK, utils.Response{
		"status":  status,
		"message": message,
		"data":    product.References,
	})
}
