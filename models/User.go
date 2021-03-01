package models

import (
	"database/sql"
	"errors"
	"fmt"
)

type User struct {
	Id        int    `json:"id" example:"123"`
	Name      string `json:"name" example:"Paracetamol"`
	CreatedAt string `json:"created_at,omitempty" example:"2021-02-24 20:19:39"`
	Email     string `json:"email" example:"luis.raga@keny.com"`
	UpdatedAt string `json:"updated_at,omitempty" example:"2021-02-24 20:19:39"`
}

func (user *User) GetUserByid() (err error) {
	querySelect := `
		SELECT  name, email
			FROM users 
		WHERE id = ?; `

	row := dbBoilerplateGo.Read.QueryRow(querySelect, user.Id)
	fmt.Println(row)
	err = row.Scan(&user.Name, &user.Email)

	if errors.Is(err, sql.ErrNoRows) {
		err = nil
	}

	return
}
