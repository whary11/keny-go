package utils

import (
	"net"
	"strings"
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
