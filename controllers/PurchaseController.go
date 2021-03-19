package controllers

import (
	"fmt"
	"keny-go/models"
	"keny-go/utils"
	"net/http"
	"strconv"
	"strings"

	"github.com/gin-gonic/gin"
)

var (
	code_bad_references       int
	code_not_exist_references int
	code_bad_total            int
	code_error_create         int
	code_error_bad_activities int
)

func init() {
	code_bad_references = 300
	code_not_exist_references = 301
	code_bad_total = 302
	code_error_create = 303
	code_error_bad_activities = 304
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
	var (
		ids            string
		ids_activities string
	)
	details := ""
	details_activities := ""
	for i := 0; i < len(purchase.References); i++ {
		id := strconv.Itoa(purchase.References[i].Id)
		ids += id
		quantity := strconv.Itoa(purchase.References[i].Quantity)
		price_with_discount := fmt.Sprintf("%g", purchase.References[i].PriceWithDiscount)

		for _, val := range purchase.References[i].Activities {
			ids_activities += strconv.Itoa(val.Id)
			details_activities += id + "&&" + strconv.Itoa(val.Id) + "&&" + strconv.Itoa(val.Quantity) + "&&" + fmt.Sprintf("%g", val.PriceWithDiscount)
			if len(purchase.References[i].Activities) > i+1 {
				ids_activities += ","
				details_activities += "||"
			}
		}

		details += id + "&&" + quantity + "&&" + price_with_discount
		if len(purchase.References) > i+1 {
			ids += ","
			details += "||"
		}
	}
	// utils.GetResponse(c, http.StatusOK, utils.Response{
	// 	"code":    code_not_exist_references,
	// 	"status":  false,
	// 	"message": "Algunas referencias no existen",
	// 	"data":    details,
	// })
	// return

	var (
		bad_references   []models.Reference
		exist_references []models.Reference
		bad_activities   []models.Reference
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

	result_activities := models.GetInfoRefences(ids_activities)
	for _, r := range result_activities.References {
		for _, d := range purchase.References {
			for _, a := range d.Activities {
				if a.Id == r.Id {
					if r.TypeId != 2 || r.PriceWithDiscount != a.PriceWithDiscount || r.Stock < a.Quantity {
						bad_activities = append(bad_activities, r)
					}
				}
			}
		}
	}

	if len(bad_activities) > 0 {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    code_error_bad_activities,
			"status":  false,
			"message": "Algunas actividades con inconsistencias",
			"total":   bad_activities,
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
	//obtener id del user.
	header := c.Request.Header["Authorization"]
	bearerToken := header[0]
	token := strings.Split(bearerToken, " ")
	if len(token) == 2 && token[0] == "Bearer" {
		var claim utils.Claim
		claim.GetContainJwt(token[1])
		fmt.Println(claim.Sub)
		purchase.UserId = claim.Sub
	}
	create_status, message_create := purchase.CreatePurchase(details, details_activities)
	if create_status {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusOK,
			"status":  true,
			"message": message_create,
		})
		return
	} else {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    code_error_create,
			"status":  false,
			"message": message_create,
		})
		return
	}
	// purchase.Total = total_back

	// fmt.Println(total_back)

	// Consultar la información de las referencias
	// utils.GetResponse(c, http.StatusOK, utils.Response{
	// 	"code":    http.StatusOK,
	// 	"status":  true,
	// 	"data":    result,
	// 	"message": "Continue...",
	// })
}
