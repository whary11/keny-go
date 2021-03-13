package controllers

import (
	"keny-go/models"
	"keny-go/utils"
	"net/http"

	"github.com/gin-gonic/gin"
)

func Info(c *gin.Context) {

	var reference models.Reference
	if err := c.ShouldBindJSON(&reference); err != nil {
		c.AbortWithStatusJSON(http.StatusOK, utils.Response{
			"code":    http.StatusInternalServerError,
			"status":  false,
			"message": err.Error(),
			"data":    nil,
		})
		return
	}
}
