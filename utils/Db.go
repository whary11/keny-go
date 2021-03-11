package utils

import (
	"bufio"
	// "fmt"
	"log"
	"os"
)

func GetSql()(string) {
	file, err := os.Open( "./database/keny.sql")
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()
	scanner := bufio.NewScanner(file)
	text := ``
	for scanner.Scan() {
		text+=scanner.Text()
		// fmt.Println(scanner.Text())
		text+="\n"
		// fmt.Println(scanner.Bytes())
	}


	return text
}