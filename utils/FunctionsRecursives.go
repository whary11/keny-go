package utils

import (
	"fmt"
	"net"
	"os"
	"strings"

	"github.com/gin-gonic/gin"
	// "github.com/joho/godotenv"
	"github.com/joho/godotenv"
)

func GetResponse(c *gin.Context, code int, data Response) {
	c.JSON(code, data)
}

func GetOutboundIP() string {
	conn, _ := net.Dial("udp", "8.8.8.8:80")

	// HandleError("net.Dial: ", err)
	defer conn.Close()
	localAddr := conn.LocalAddr().String()
	idx := strings.LastIndex(localAddr, ":")
	return localAddr[0:idx]
}

func GetIvaValue(value int, iva int) int {
	return ((value * iva) / 100)
}

func GetEnv(key string, defaultKey string) string {
	err := godotenv.Load()
	if err != nil {
		fmt.Println(err.Error(), defaultKey)
		return err.Error()
	}
	result := os.Getenv(key)
	return result
}

func GetPriceWithDiscount(price float64, percent float64) float64 {
	return price - ((price * percent) / 100)
}
