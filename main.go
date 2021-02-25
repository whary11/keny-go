package main

import (
	"keny-go/controllers"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()
	router.Static("/public", "public")
	router.LoadHTMLGlob("views/*")

	// Simple group: v1
	v1 := router.Group("/api")
	{
		v1.GET("/init", controllers.InitIndex)

	}
	router.Run(":4000")
}
