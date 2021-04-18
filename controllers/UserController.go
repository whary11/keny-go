package controllers

import (
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"

	"keny-go/models"
	"keny-go/utils"
)

func GetUserById(c *gin.Context) {
	var user models.User
	userId, _ := c.Get("user_id")
	user.Id = userId.(int)
	fmt.Println(user.Id)
	// if err != nil {
	// 	// badRequest(c, []string{"user ID is invalid"})
	// 	return
	// }
	err := user.GetUserByid()
	if err != nil {
		// serverError(c, err)
		fmt.Println(err.Error())
		return
	}

	if user.Name == "" {
		// badRequest(c, []string{"user ID is not found"})
		return
	}

	c.JSON(http.StatusOK, user)
}

func RegisterUser(c *gin.Context) {
	var user models.User
	if err := c.ShouldBindJSON(&user); err != nil {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusInternalServerError,
			"status":  false,
			"message": err.Error(),
			"data":    "",
		})
		return
	}

	user.Password, _ = utils.HashPassword(user.Password)

	state, message := user.CreateUser()

	if state {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusOK,
			"status":  state,
			"message": message,
			"data":    user,
		})
	} else {
		utils.GetResponse(c, http.StatusOK, utils.Response{
			"code":    http.StatusOK,
			"status":  state,
			"message": message,
		})
	}

}
