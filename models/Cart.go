package models

import (
	"fmt"
	"keny-go/utils"
)

type Cart struct {
	Id          int          `form:"id" json:"id" xml:"id"`
	UserId      int          `form:"user_id" json:"user_id" xml:"user_id"`
	ReferenceId int          `form:"reference_id" json:"reference_id" xml:"reference_id"  binding:"required"`
	Quantity    int          `form:"quantity" json:"quantity" xml:"quantity" binding:"required"`
	CartDetail  []CartDetail `form:"cart_detail" json:"cart_detail" xml:"cart_detail"`
}

type CartDetail struct {
	ReferenceId int `form:"reference_id" json:"reference_id" xml:"reference_id"  binding:"required"`
	CartId      int `form:"cart_code" json:"cart_code" xml:"cart_code"`
	Quantity    int `form:"quantity" json:"quantity" xml:"quantity"`
}

func (c *Cart) CreateCart() (bool, string) {
	var carDetails CartDetail
	query := `call ksp_add_to_cart(?,?,?,?);`

	fmt.Println(query)

	rows, err := dbBoilerplateGo.Read.Query(query, c.ReferenceId, c.UserId, c.Quantity, c.Id)

	if err != nil {
		fmt.Println(err.Error())
	}
	defer rows.Close()
	for rows.Next() {
		if err := rows.Scan(&c.Id, &c.UserId, &carDetails.ReferenceId, &carDetails.CartId, &carDetails.Quantity); err != nil {
			fmt.Println(err.Error())
		}

	}

	return true, "registro creado con exito"

}

func (c *Cart) ValidateCart() bool {
	var excepcioSql utils.ExceptionSql

	querySelect := `CALL ksp_validate_cart(?,?,?)`
	row := dbBoilerplateGo.Write.QueryRow(querySelect, c.Id, c.Quantity, c.ReferenceId)
	result := true
	err := row.Scan(&excepcioSql.Level, &excepcioSql.Code, &excepcioSql.Message)
	if err != nil {
		result = false
		excepcioSql.Message = err.Error()
		fmt.Println(err.Error())
	}
	if excepcioSql.Level == "OK" {
		result = true
	}
	return result
}
