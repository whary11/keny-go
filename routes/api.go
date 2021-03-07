package routes

import (
	"keny-go/controllers"
	"keny-go/middlewares"

	"github.com/gin-gonic/gin"
)

func Api(router *gin.Engine) {
	router.GET("/product_detail/:slug", controllers.ProductDatail)

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
		v1 := api.Group("/cart", middlewares.Auth())
		{
			v1.POST("/add", controllers.Add)
		}
	}

}
