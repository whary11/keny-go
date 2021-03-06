package main

import (
	"keny-go/routes"

	"github.com/gin-gonic/gin"
)

// Dev: nodemon --exec go run main.go --signal SIGTERM
func main() {
	port := "4001"
	router := gin.Default()
	//// Rutas
	routes.Api(router)

	router.Run(":" + port)
}
