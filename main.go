package main

import (
	"fmt"
	"keny-go/routes"
	"keny-go/utils"

	"github.com/gin-gonic/gin"
)

// Dev: nodemon --exec go run main.go --signal SIGTERM
func main() {
	fmt.Println(utils.GetEnv("APP_PORT", ":4001"))
	// models.SaveTablesAndData()

	port := utils.GetEnv("APP_PORT", "4001")
	router := gin.Default()
	//// Rutas
	routes.Api(router)

	router.Run(":" + port)

}
