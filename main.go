package main

import (
	"fmt"
	"keny-go/routes"
	"keny-go/utils"

	"github.com/gin-gonic/gin"

	"github.com/joho/godotenv"
)

func init() {
	err := godotenv.Load()
	if err != nil {

		fmt.Println(err.Error())
	}
}

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
