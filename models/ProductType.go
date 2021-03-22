package models

import (
	"fmt"
	"keny-go/utils"
)

type ReferenceActivity struct {
	Id                int     `json:"id" example:"123"`
	Name              string  `json:"name" example:"Paracetamol"`
	ViewFront         int     `json:"view_front" example:"luis.raga@keny.com"`
	Price             float64 `json:"price" example:"1000"`
	Discount          float64 `json:"discount" example:"1000"`
	PriceWithDiscount float64 `json:"price_with_discount" example:"900"`
	Stock             int     `json:"stock" example:"10"`
	// Quantity          int     `json:"quantity" example:"10"`
	// Color             string  `json:"color" example:"red"`
	Images []Image `json:"images" example:"2021-02-24 20:19:39"`
	TypeId int     `json:"type_id"`
}

type Type struct {
	References []ReferenceActivity `json:"references"`
	Slug       string              `json:"slug" example:"actividades"`
	Id         int                 `json:"id,omitempty" example:"1"`
	Offset     int                 `json:"page,omitempty"`
	Limit      int                 `json:"limit,omitempty"`
	Count      int                 `json:"count"`
}

func (t *Type) GetProductsType() (status bool, message string) {

	var product Product
	var reference ReferenceActivity
	var reference_images Images

	querySelect := `CALL ksp_get_products_by_type(?,?,?)`

	rows, err := dbBoilerplateGo.Read.Query(querySelect, t.Slug, t.Offset, t.Limit)
	if err != nil {
		fmt.Println(err.Error())
		return false, err.Error()
	}

	defer rows.Close()
	for rows.Next() {
		if err := rows.Scan(&reference.Id, &reference.Name, &reference.ViewFront, &reference.Price, &reference.Stock, &product.Discount, &reference.TypeId); err != nil {
			fmt.Println(err.Error())
		}
		//llenar las imagens de cada referencia
		reference.PriceWithDiscount = utils.GetPriceWithDiscount(reference.Price, product.Discount)
		reference_images.ReferenceId = reference.Id
		reference_images.Images = []Image{}
		status, message := reference_images.GetImagesByReferenceId()

		if !status {
			return false, message
		}
		reference.Images = reference_images.Images
		t.addReferenceToType(reference)
	}

	// fmt.Println(rows)
	// fmt.Println(status)

	return true, message
}

func (t *Type) addReferenceToType(r ReferenceActivity) {
	t.References = append(t.References, r)
}

func (t *Type) GetCountProductType() {
	querySelect := `CALL ksp_count_products_by_type(?)`
	row := dbBoilerplateGo.Read.QueryRow(querySelect, t.Slug)
	err := row.Scan(&t.Count)
	if err != nil {
		fmt.Println("GetCountProductType: " + err.Error())
	}
}
