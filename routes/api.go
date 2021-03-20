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
		cart := api.Group("/cart")
		{
			cart.POST("/add", middlewares.Cart(), controllers.Add)
		}

		// Productos

		product := api.Group("/product")
		{
			product.GET("/detail/:slug", controllers.ProductDatail)
			product.GET("/reference/info", controllers.Info)
			product.GET("/types/:slug/:page", controllers.ProductsType)
		}

		// Productos

		purchase := api.Group("/purchase")
		{
			purchase.POST("/create/", middlewares.Auth(), controllers.Create)
			// purchase.GET("/reference/info", controllers.Info)
		}
	}

}
