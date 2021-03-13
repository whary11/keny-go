package models

import (
	"fmt"
	"keny-go/utils"
)

type Purchase struct {
	References []Reference `json:"references" example:"[]" binding:"required"`
	Total      float64     `json:"total" example:"100000" binding:"required"`
}

func CreatePurchase() {

}

func GetInfoRefences(ids string) Purchase {

	var purchase Purchase
	var reference Reference
	querySelect := `CALL ksp_get_info_references(?)`
	rows, err := dbBoilerplateGo.Read.Query(querySelect, ids)
	if err != nil {
		fmt.Println(err.Error())
		// return false, err.Error()
	}
	var (
		stock    int
		price    float64
		id       int
		discount float64
	)
	defer rows.Close()
	for rows.Next() {
		if err := rows.Scan(&stock, &price, &id, &discount); err != nil {
			fmt.Println(err.Error())
		}
		reference.Stock = stock
		reference.Price = price
		reference.Discount = discount
		reference.Id = id
		reference.PriceWithDiscount = utils.GetPriceWithDiscount(price, discount)
		purchase.References = append(purchase.References, reference)
	}
	return purchase
}
