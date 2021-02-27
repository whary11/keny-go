package models

import (
	"database/sql"
	"errors"
)

type User struct {
	ID        int    `json:"id" example:"123"`
	Name      string `json:"name" example:"Paracetamol"`
	Email     string `json:"email" example:"luis.raga@keny.com"`
	CreatedAt string `json:"created_at,omitempty" example:"2021-02-24 20:19:39"`
	UpdatedAt string `json:"updated_at,omitempty" example:"2021-02-24 20:19:39"`
}

func (user *User) GetByid() (err error) {
	querySelect := `
		SELECT  name, email
			FROM users 
		WHERE id = ?; `

	row := dbBoilerplateGo.Read.QueryRow(querySelect, user.ID)
	err = row.Scan(&user.Name, &user.Email)

	if errors.Is(err, sql.ErrNoRows) {
		err = nil
	}

	return
}
