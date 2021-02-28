package controllers

import (
	"fmt"
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"

	"keny-go/models"
)

type User struct {
	Id        int    `json:"id" example:"123"`
	Name      string `json:"name" example:"Paracetamol"`
	Email     string `json:"email" example:"luis.raga@keny.com"`
	CreatedAt string `json:"created_at,omitempty" example:"2021-02-24 20:19:39"`
	UpdatedAt string `json:"updated_at,omitempty" example:"2021-02-24 20:19:39"`
}

func GetUserById(c *gin.Context) {
	var user models.User
	userId, err := strconv.Atoi(c.Param("user_id"))
	user.Id = userId
	fmt.Println(user.Id)
	if err != nil {
		// badRequest(c, []string{"user ID is invalid"})
		return
	}
	err = user.GetUserByid()
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
