package models

import (
	"database/sql"
	"errors"
	"fmt"
	"keny-go/utils"
)

type User struct {
	Id        int    `json:"id,omitempty" example:"123" `
	Name      string `json:"name" example:"Paracetamol"`
	LastName  string `json:"last_name" example:"Paracetamol" binding:"required"`
	Password  string `json:"password,omitempty" example:"Paracetamol" binding:"required"`
	CreatedAt string `json:"created_at,omitempty" example:"2021-02-24 20:19:39"`
	Email     string `json:"email" example:"luis.raga@keny.com"`
	UpdatedAt string `json:"updated_at,omitempty" example:"2021-02-24 20:19:39"`
}

func (user *User) GetUserByid() (err error) {
	querySelect := `
		SELECT  name, email, last_name
			FROM users 
		WHERE id = ?; `

	row := dbBoilerplateGo.Read.QueryRow(querySelect, user.Id)
	fmt.Println(row)
	err = row.Scan(&user.Name, &user.Email, &user.LastName)

	if errors.Is(err, sql.ErrNoRows) {
		err = nil
	}

	return
}

func (user *User) GetUserByEmail() (err error) {
	querySelect := `CALL ksp_get_user_by_email(?)`

	row := dbBoilerplateGo.Read.QueryRow(querySelect, user.Email)
	fmt.Println(row)
	err = row.Scan(&user.Id, &user.Name, &user.LastName, &user.Email, &user.Password)

	return err
}

func (user *User) CreateUser() (bool, string) {

	var excepcioSql utils.ExceptionSql
	var (
		result  bool
		message string
	)

	querySelect := `CALL ksp_create_user(?,?,?,?)`

	row := dbBoilerplateGo.Write.QueryRow(querySelect, user.Name, user.LastName, user.Email, user.Password)
	result = false
	err := row.Scan(&excepcioSql.Level, &excepcioSql.Code, &excepcioSql.Message)

	fmt.Println(err, row, excepcioSql)
	if err != nil {
		result = false
		message = err.Error()
	}
	if excepcioSql.Code == 200 {
		result = true
	}
	message = excepcioSql.Message

	user.Password = ""

	return result, message
}

func (user *User) GetUserIdByid() (err error) {
	querySelect := `CALL ksp_get_user_id_by_email(?)`

	row := dbBoilerplateGo.Read.QueryRow(querySelect, user.Email)
	fmt.Println(row)
	err = row.Scan(&user.Id)

	return err
}
