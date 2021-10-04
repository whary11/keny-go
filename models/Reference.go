package models

import (
	"database/sql"
	"errors"
	"fmt"
)

type Reference struct {
	Id                int         `json:"id" example:"123"`
	Name              string      `json:"name" example:"Paracetamol" binding:"required"`
	ViewFront         int         `json:"view_front" example:"1"`
	Price             float64     `json:"price" example:"1000" binding:"required"`
	Discount          float64     `json:"discount" example:"1000"`
	PriceWithDiscount float64     `json:"price_with_discount" example:"900"`
	Stock             int         `json:"stock" example:"10" binding:"required"`
	Quantity          int         `json:"quantity" example:"10"`
	Color             string      `json:"color" example:"red" binding:"required"`
	Images            []Image     `json:"images" example:"[]" binding:"required"`
	Activities        []Reference `json:"activities"`
	TypeId            int         `json:"type_id" binding:"required"`
	Headquarters      []int       `json:"Headquarters" binding:"required"`
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
		fmt.Println("No hay resultados", price_with_discount)
	}
	if err != nil {
		fmt.Println(err.Error())
		return false, 0
	}

	fmt.Println(rh_stock, price, discount)
	return true, rh_stock
}
