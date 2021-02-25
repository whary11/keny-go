package controllers

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func InitIndex(c *gin.Context) {
	c.HTML(http.StatusOK, "index.tmpl", gin.H{
		"title": "Main website",
	})
}
