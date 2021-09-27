package main

import (
	"fmt"
	"keny-go/routes"
	"keny-go/utils"

	"github.com/gin-gonic/gin"
)

// Ligin
// {
// 	"email":"luis.raga@gmail.com",
// 	"password": "5f4dcc3b5aa765d61d8327deb882cf99"
// }

// Dev: nodemon --exec go run main.go --signal SIGTERM
func main() {

	fmt.Println(utils.GetEnv("APP_PORT", ":4001"))
	// models.SaveTablesAndData()

	port := "4001"
	router := gin.Default()
	//// Rutas
	routes.Api(router)

	router.Run(":" + port)

}
