package models

import "fmt"

type Cart struct {
	Id          int
	ReferenceId int `form:"reference_id" json:"reference_id" xml:"reference_id"  binding:"required"`
	CartCode    int `form:"cart_code" json:"cart_code" xml:"cart_code"`
	UserId      int `form:"user_id" json:"user_id" xml:"user_id"`
}

func (c *Cart) CreateCart() (bool, string) {

	query := `INSERT INTO cart (id, reference_id, user_id, code_cart) VALUES (null,?,?,?);`

	fmt.Println(query)

	rows, err := dbBoilerplateGo.Read.Query(query, c.ReferenceId, c.UserId, c.CartCode)
	if err != nil {
		fmt.Println(err.Error())
		fmt.Println(rows)
		return false, err.Error()
	}

	return true, "registro creado con exito"

}
