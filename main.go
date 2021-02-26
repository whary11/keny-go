package main

import (
	"fmt"
	"keny-go/controllers"
	"keny-go/utils"

	"github.com/gin-gonic/gin"
)

func main() {

	port := "4000"
	fmt.Println("Servidor corriendo en: " + utils.GetOutboundIP() + ":" + port)
	router := gin.Default()
	// Cargar archivos públicos
	// https://docs.gomplate.ca/syntax/ => sintaxis
	router.Static("/public", "public")
	router.LoadHTMLGlob("views/*")

	router.GET("/", controllers.InitIndex)

	router.Run(":" + port)
}
