package main

import (
	"keny-go/routes"
	"keny-go/models"

	"github.com/gin-gonic/gin"
)

// Dev: nodemon --exec go run main.go --signal SIGTERM
func main() {

	// models.SaveTablesAndData()
	
	port := "4001"
	router := gin.Default()
	//// Rutas
	routes.Api(router)

	router.Run(":" + port)
}
