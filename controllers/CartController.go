package controllers

import (
	"fmt"
	"keny-go/models"
	"keny-go/utils"
	"net/http"

	"github.com/gin-gonic/gin"
)



func Add(c *gin.Context) {
	var cart models.Cart
	if err := c.ShouldBindJSON(&cart); err != nil {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusInternalServerError,
			"status":  false,
			"message": err.Error(),
			"data":    "",
		})
		return
	}

	// if cart.CartCode == 0 {
	// 	cart.Id = rand.Intn(100000000)
	// }
	if cart.UserId == 0 {
		cart.UserId = 0
	}

	fmt.Println(cart)

	result, message := cart.CreateCart()

	if !result {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusInternalServerError,
			"status":  false,
			"message": message,
			"data":    nil,
		})
		return
	}

	// reference_id, err := strconv.Atoi(c.Query("reference_id"))

	// if err != nil {
	// 	utils.GetResponse(c, http.StatusOK, utils.Response{
	// 		"code":    http.StatusInternalServerError,
	// 		"status":  false,
	// 		"message": err.Error(),
	// 		"data":    "",
	// 	})
	// 	return
	// }

	utils.GetResponse(c, http.StatusOK, utils.Response{
		"code":    http.StatusOK,
		"status":  true,
		"message": "",
		"data":    cart,
	})
}
