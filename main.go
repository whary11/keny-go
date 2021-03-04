package main

import (
	"fmt"
	"keny-go/controllers"
	"keny-go/utils"
	"net/http"

	"github.com/gin-gonic/gin"
)

// Dev: nodemon --exec go run main.go --signal SIGTERM
func main() {
	u := utils.Model{
		FirstName: "luis",
		Email:     "luis.raga@laika.com.co",
	}
	e, _ := utils.GenerateJWT(u)

	port := "4000"
	fmt.Println("Servidor corriendo en: " + utils.GetOutboundIP() + ":" + port)
	router := gin.Default()
	// Cargar archivos públicos
	// https://docs.gomplate.ca/syntax/ => sintaxis
	// router.Static("/public", "public")
	// router.LoadHTMLGlob("views/**/*")

	// router.GET("/", controllers.InitIndex)
	router.GET("/product_detail/:slug", controllers.ProductDatail)
	router.GET("/user/:user_id", controllers.GetUserById)

	v1 := router.Group("/cart")
	{
		v1.POST("/add", controllers.Add)
		v1.GET("/validate_token", func(c *gin.Context) {

			tokenString := e

			message, validate := utils.VerifiedToken(tokenString)
			utils.GetResponse(c, http.StatusOK, utils.Response{
				"validate": validate,
				"message":  message,
			})
		})
	}

	router.Run(":" + port)
}
