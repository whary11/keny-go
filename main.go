package main

import (
	"keny-go/routes"

	"github.com/gin-gonic/gin"
)

// Dev: nodemon --exec go run main.go --signal SIGTERM
func main() {

	// models.SaveTablesAndData()

	port := "4010"
	router := gin.Default()
	//// Rutas
	routes.Api(router)

	router.Run(":" + port)
}
