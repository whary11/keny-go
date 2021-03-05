package main

import (
	"fmt"
	"keny-go/controllers"
	"keny-go/middlewares"
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

	fmt.Println(e)

	port := "4001"
	fmt.Println("Servidor corriendo en: " + utils.GetOutboundIP() + ":" + port)
	router := gin.Default()
	// Cargar archivos públicos
	// https://docs.gomplate.ca/syntax/ => sintaxis
	// router.Static("/public", "public")
	// router.LoadHTMLGlob("views/**/*")

	// router.GET("/", controllers.InitIndex)
	router.GET("/product_detail/:slug", controllers.ProductDatail)
	router.GET("/user/:user_id", controllers.GetUserById)

	v1 := router.Group("/cart", middlewares.Auth())
	{
		v1.POST("/add", controllers.Add)
		// v1.Use()
		v1.POST("/validate_token", func(c *gin.Context) {
			tokenString := `eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImZpcnN0X25hbWUiOiJsdWlzIiwiZW1haWwiOiJsdWlzLnJhZ2FAbGFpa2EuY29tLmNvIn0sImV4cCI6MTYxNDk4Nzc1OSwiaXNzIjoiS2VueSJ9.OBr2upZlNysokn2EvbD69rBqN_O8-lTdwk0eNSrTW4g0ccQzrejgeKhkXxU03dRc9tQ8kzpVgswyVEWeYFM8lfyLP9H48VY6kLRpRn7QdNIlmSkLjY4dQch5eshFBCQwndcW_R7DKKJpOsw2V4ttiQKoAVs6-vMyDOJA6HsFdmww5SjHbrJYlpBVFNrE3ROvu_B5E_bCwtTW70pq8GDFLTLu41rIaU-YfLtdzpwDcGMffUQARkPQ-ZvR4crZkDNFwQ8HSx-Hy20WDqbOe-WQT02KmDXjm2JT4vqg-MeI4-0CIl2AT64b8SXEx2UuFDn1xwoMqg6yQSwn6LEoIlrZsQ`
			message, validate := utils.VerifiedToken(tokenString)
			utils.GetResponse(c, http.StatusOK, utils.Response{
				"validate": validate,
				"message":  message,
				"data":     utils.GetContainJwt(tokenString),
			})
		})
	}

	router.Run(":" + port)
}
