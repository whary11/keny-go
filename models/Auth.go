package models

import (
	"fmt"
	"keny-go/utils"

	"github.com/google/uuid"
)

type Auth struct {
	Uuid            uuid.UUID
	TokenExpires    string
	RefreshTokenExp string
	UserId          int
}

func (a *Auth) SaveToken() (bool, string) {
	var excepcioSql utils.ExceptionSql
	var (
		result  bool
		message string
	)
	querySelect := `CALL ksp_create_token(?,?,?,?)`
	row := dbBoilerplateGo.Write.QueryRow(querySelect, a.Uuid, a.TokenExpires, a.RefreshTokenExp, a.UserId)
	result = false
	err := row.Scan(&excepcioSql.Level, &excepcioSql.Code, &excepcioSql.Message)
	fmt.Println(err, row, a.Uuid)
	if err != nil {
		result = false
		message = err.Error()
	}
	if excepcioSql.Code == 200 {
		result = true
	}
	message = excepcioSql.Message

	return result, message
}
