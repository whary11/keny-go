package utils

import (
	"log"
	"net"
	"os"
	"strings"

	"github.com/joho/godotenv"
)

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

func GetEnv(key string) string {
	err := godotenv.Load()
	if err != nil {
		log.Fatal("Error loading .env file")
	}
	result := os.Getenv(key)
	return result
}
