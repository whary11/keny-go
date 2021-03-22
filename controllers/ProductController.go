package controllers

import (
	"fmt"
	"keny-go/models"
	"keny-go/utils"
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

func ProductDatail(c *gin.Context) {
	var product models.Product
	slug := c.Param("slug")
	product.Slug = slug

	status, message := product.GetProductBySlug()

	if !status {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusNotFound,
			"status":  status,
			"message": message,
			"data":    nil,
		})
		return
	}
	utils.GetResponse(c, http.StatusOK, utils.Response{
		"code":    http.StatusOK,
		"status":  status,
		"message": message,
		"data":    product,
	})
}

func ProductsType(c *gin.Context) {
	slug := c.Param("slug")
	page := c.Param("page")

	var t models.Type

	t.Slug = slug
	t.Limit = 10

	page_int, err := strconv.Atoi(page)

	if err != nil {
		fmt.Println("Error al convertir la página", err)
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":   http.StatusInternalServerError,
			"status": false,

			"message": "La página debe ser de tipo entero.",
			"data":    page,
		})
		return
	}

	t.Offset = t.Limit * (page_int - 1)

	status, message := t.GetProductsType()
	t.GetCountProductType()

	if !status {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusNotFound,
			"status":  status,
			"message": message,
			"data":    t,
		})
		return
	}

	utils.GetResponse(c, http.StatusOK, utils.Response{
		"code":    http.StatusOK,
		"status":  status,
		"message": message,
		"data":    t,
	})
	return
}
