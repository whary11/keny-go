package models

import (
	"keny-go/utils"
	"fmt"
)

func SaveTablesAndData() (bool, string) {
	var excepcioSql utils.ExceptionSql
	var (
		result  bool
		message string
	)
	querySelect := utils.GetSql()
	err, row := dbBoilerplateGo.Write.Exec(querySelect)

	
	result = false
	// err = row.Scan(&excepcioSql.Level, &excepcioSql.Code, &excepcioSql.Message)
	fmt.Println(err, row)
	
	if excepcioSql.Code == 200 {
		result = true
	}
	message = excepcioSql.Message

	return result, message
}