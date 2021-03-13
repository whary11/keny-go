package controllers

import (
	"keny-go/models"
	"keny-go/utils"
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

var (
	code_bad_references       int
	code_not_exist_references int
	code_bad_total            int
)

func init() {
	code_bad_references = 300
	code_not_exist_references = 301
	code_bad_total = 302
}

func Create(c *gin.Context) {

	var purchase models.Purchase
	if err := c.ShouldBindJSON(&purchase); err != nil {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusInternalServerError,
			"status":  false,
			"message": err.Error(),
			"data":    "",
		})
		return
	}

	// Armar el string con los id de referencias recibidas
	var ids string

	for i := 0; i < len(purchase.References); i++ {
		ids += strconv.Itoa(purchase.References[i].Id)
		if len(purchase.References) > i+1 {
			ids += ","
		}
	}
	var (
		bad_references   []models.Reference
		exist_references []models.Reference
		total_back       float64
	)
	result := models.GetInfoRefences(ids)
	for _, item := range result.References {
		for _, ref := range purchase.References {
			if ref.Id == item.Id {
				total_back += item.PriceWithDiscount * float64(ref.Quantity)
				// Validar que el stock y price
				item.Quantity = ref.Quantity
				if ref.Quantity > item.Stock || ref.PriceWithDiscount != item.PriceWithDiscount {
					bad_references = append(bad_references, item)
				}
				exist_references = append(exist_references, item)
			}
		}

	}

	//validar que existan todas las referencias
	if len(purchase.References) != len(exist_references) {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    code_not_exist_references,
			"status":  false,
			"message": "Algunas referencias no existen",
			"data":    exist_references,
		})
		return
	}

	//validar que no este mal el stock o price
	if len(bad_references) > 0 {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    code_bad_references,
			"status":  false,
			"message": "Algunas referencias con inconsistencias",
			"data":    bad_references,
		})
		return
	}

	// validar el total
	if total_back != purchase.Total {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    code_bad_total,
			"status":  false,
			"message": "El total no coincide",
			"total":   total_back,
		})
		return
	}

	// fmt.Println(total_back)

	// Consultar la información de las referencias
	utils.GetResponse(c, http.StatusOK, utils.Response{
		"code":    http.StatusOK,
		"status":  true,
		"data":    result,
		"message": "Continue...",
	})
}
