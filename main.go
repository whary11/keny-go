package main

import (
	"keny-go/controllers"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()
	// Cargar archivos públicos
	// https://docs.gomplate.ca/syntax/ => sintaxis
	router.Static("/public", "public")
	router.LoadHTMLGlob("views/*")

	router.GET("/", controllers.InitIndex)

	router.Run(":4000")
}
