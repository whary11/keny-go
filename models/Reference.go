package models

import (
	"database/sql"
	"errors"
	"fmt"
)

type Reference struct {
	Id                int     `json:"id" example:"123"`
	Name              string  `json:"name" example:"Paracetamol"`
	ViewFront         int     `json:"view_front" example:"luis.raga@keny.com"`
	Price             float64 `json:"price" example:"1000"`
	PriceWithDiscount float64 `json:"price_with_discount" example:"900"`
	Stock             int     `json:"stock" example:"2021-02-24 20:19:39"`
	Color             string  `json:"color" example:"2021-02-24 20:19:39"`
	Images            []Image `json:"images" example:"2021-02-24 20:19:39"`
}

func ValidateStockReference(quantity int, referenceId int, cartId int) (bool, int) {

	var (
		rh_stock int
		cd_stock int
	)

	querySelect := `CALL ksp_get_stock_reference(?,?,?)`
	row := dbBoilerplateGo.Write.QueryRow(querySelect, quantity, referenceId, cartId)

	err := row.Scan(&rh_stock, &cd_stock)

	if errors.Is(err, sql.ErrNoRows) {
		fmt.Println("No ha y filas")
	}
	if err != nil {
		fmt.Println(err.Error())
		return false, 0
	}
	if rh_stock < (cd_stock + quantity) {
		return false, rh_stock
	}
	return true, rh_stock
}
