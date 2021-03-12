package routes

import (
	"keny-go/controllers"
	"keny-go/middlewares"

	"github.com/gin-gonic/gin"
)

func Api(router *gin.Engine) {

	api := router.Group("/api")
	{

		// Autenticación
		auth := api.Group("/auth")
		{
			auth.POST("/login", controllers.Login)
		}

		// Usuarios
		user := api.Group("/users")
		{
			user.POST("/register", controllers.RegisterUser)
			user.GET("/:user_id", middlewares.Auth(), controllers.GetUserById)

		}

		/// Rutas para el carrito
		v1 := api.Group("/cart")
		{
			v1.POST("/add", middlewares.Cart(), controllers.Add)
		}

		// Productos
		api.GET("/product_detail/:slug", controllers.ProductDatail)
	}

}
