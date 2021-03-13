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
	Discount          float64 `json:"discount" example:"1000"`
	PriceWithDiscount float64 `json:"price_with_discount" example:"900"`
	Stock             int     `json:"stock" example:"10"`
	Quantity          int     `json:"quantity" example:"10"`
	Color             string  `json:"color" example:"red"`
	Images            []Image `json:"images" example:"2021-02-24 20:19:39"`
}

func ValidateStockReference(referenceId int) (bool, int) {

	var (
		rh_stock            int
		price               float64
		price_with_discount float64
		discount            float64
	)

	querySelect := `CALL ksp_get_stock_reference(?)`
	row := dbBoilerplateGo.Write.QueryRow(querySelect, referenceId)

	err := row.Scan(&rh_stock, &price, &discount)

	if errors.Is(err, sql.ErrNoRows) {
		fmt.Println("No ha y filas", price_with_discount)
	}
	if err != nil {
		fmt.Println(err.Error())
		return false, 0
	}

	fmt.Println(rh_stock, price, discount)
	return true, rh_stock
}
