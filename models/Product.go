package models

import (
	"fmt"
	"keny-go/utils"
)

type Product struct {
	Id               int         `json:"id" example:"123"`
	Name             string      `json:"name" example:"Paracetamol"`
	Description      string      `json:"description" example:"luis.raga@keny.com"`
	MetaTitle        string      `json:"meta_title" example:"2021-02-24 20:19:39"`
	MetaDescription  string      `json:"meta_description" example:"2021-02-24 20:19:39"`
	MetaTags         string      `json:"meta_tags" example:"2021-02-24 20:19:39"`
	Slug             string      `json:"slug" example:"page-1"`
	Discount         float64     `json:"discount" example:"10"`
	NumberActivities int         `json:"number_activities" example:"123"`
	References       []Reference `json:"references" example:"page-1"`
}

type Type struct {
	Products []Product `json:"products"`
	Slug     string    `json:"slug" example:"actividades"`
	Id       int       `json:"id" example:"1"`
	Offset   int       `json:"page"`
	Limit    int       `default:10`
}

func (product *Product) GetProductBySlug() (status bool, message string) {

	var reference Reference
	var reference_images Images
	querySelect := `CALL ksp_get_product_by_slug(?)`

	fmt.Println(product.Slug)
	rows, err := dbBoilerplateGo.Read.Query(querySelect, product.Slug)
	if err != nil {
		fmt.Println(err.Error())
		return false, err.Error()
	}

	defer rows.Close()
	for rows.Next() {
		if err := rows.Scan(&product.Id, &product.Name, &product.Slug, &product.Description, &product.MetaTitle,
			&product.MetaDescription, &product.MetaTags, &product.NumberActivities, &reference.Id, &reference.Name, &reference.Color,
			&reference.ViewFront, &reference.Price, &reference.Stock, &product.Discount); err != nil {
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
		product.addReference(reference)
	}

	if product.Id == 0 {
		return false, "No se encontró información"
	}
	return true, "Consulta exitosa"
}

func (p *Product) addReference(r Reference) {
	p.References = append(p.References, r)
}

func (t *Type) GetProductsType() (status bool, message string) {

	var product Product
	var reference Reference
	var reference_images Images

	querySelect := `CALL ksp_get_products_by_type(?,?,?)`

	rows, err := dbBoilerplateGo.Read.Query(querySelect, t.Slug, t.Offset, t.Limit)
	if err != nil {
		fmt.Println(err.Error())
		return false, err.Error()
	}

	defer rows.Close()
	for rows.Next() {
		if err := rows.Scan(&product.Id, &product.Name, &product.Slug, &product.Description, &product.MetaTitle,
			&product.MetaDescription, &product.MetaTags, &product.NumberActivities, &reference.Id, &reference.Name, &reference.Color,
			&reference.ViewFront, &reference.Price, &reference.Stock, &product.Discount, &reference.TypeId); err != nil {
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
		product.addReference(reference)

		t.addProduct(product)

	}

	// fmt.Println(rows)
	// fmt.Println(status)

	return true, message
}

func (t *Type) addProduct(p Product) {
	t.Products = append(t.Products, p)
}
