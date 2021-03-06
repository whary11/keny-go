package routes

import (
	"keny-go/controllers"
	"keny-go/middlewares"

	"github.com/gin-gonic/gin"
)

func Api(router *gin.Engine) {
	// router.GET("/product_detail/:slug", controllers.ProductDatail)
	// router.GET("/user/:user_id", controllers.GetUserById)

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
		}

		/// Rutas para el carrito
		v1 := api.Group("/cart", middlewares.Auth())
		{
			v1.POST("/add", controllers.Add)
		}
	}

}
