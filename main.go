package main

import (
	"fmt"
	"keny-go/controllers"
	"keny-go/utils"

	"github.com/gin-gonic/gin"
)

// Dev: nodemon --exec go run main.go --signal SIGTERM
func main() {

	// fmt.Println(utils.GetEnv("DATABASE_READ_USERNAME") + ":" + utils.GetEnv("DATABASE_READ_PASSWORD") + "@tcp(" + utils.GetEnv("DATABASE_READ_HOSTNAME") + "" + utils.GetEnv("DATABASE_READ_PORT") + ")/" + utils.GetEnv("DATABASE_READ_NAME"))

	port := "4000"
	fmt.Println("Servidor corriendo en: " + utils.GetOutboundIP() + ":" + port)
	router := gin.Default()
	// Cargar archivos públicos
	// https://docs.gomplate.ca/syntax/ => sintaxis
	router.Static("/public", "public")
	router.LoadHTMLGlob("views/**/*")

	router.GET("/", controllers.InitIndex)
	router.GET("/product_detail/:slug", controllers.ProductDatail)
	router.GET("/user/:user_id", controllers.GetUserById)

	router.Run(":" + port)
}
