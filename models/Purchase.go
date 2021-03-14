package models

import (
	"fmt"
	"keny-go/utils"

	"github.com/uniplaces/carbon"
)

type Purchase struct {
	References []Reference `json:"references" example:"[]" binding:"required"`
	Total      float64     `json:"total" example:"100000" binding:"required"`
	Address    Address     `json:"address,omitempty" `
	AddressId  int         `json:"address_id,omitempty" binding:"required"`
	PhoneId    int         `json:"phone_id,omitempty" binding:"required"`
	Phone      int         `json:"phone,omitempty"`
	Id         int         `json:"id,omitempty"`
	UserId     int         `json:"user_id,omitempty"`
	City       City        `json:"city,omitempty"`
	CityId     int         `json:"city_id,omitempty" binding:"required"`
}

func (p *Purchase) CreatePurchase(details string) (bool, string) {

	var excepcioSql utils.ExceptionSql
	var (
		result  bool
		message string
	)
	querySelect := `CALL ksp_create_purchase(?,?,?,?,?,?,?)`
	row := dbBoilerplateGo.Write.QueryRow(querySelect, p.UserId, p.PhoneId, p.AddressId, p.CityId, p.Total, details, carbon.Now().DateTimeString())
	result = false
	err := row.Scan(&excepcioSql.Level, &excepcioSql.Code, &excepcioSql.Message)
	message = excepcioSql.Message
	fmt.Println(err, row)
	if err != nil {
		result = false
		message = err.Error()
	}
	if excepcioSql.Code == 200 {
		result = true
	}

	return result, message

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
