package models

import (
	"fmt"
	"keny-go/utils"
	"strconv"

	"github.com/uniplaces/carbon"
)

type Product struct {
	Id               int         `json:"id" example:"1"`
	Name             string      `json:"name" example:"Paracetamol" binding:"required"`
	Description      string      `json:"description" example:"description" binding:"required"`
	MetaTitle        string      `json:"meta_title" example:"meta_title" binding:"required"`
	MetaDescription  string      `json:"meta_description" example:"meta_description" binding:"required"`
	MetaTags         string      `json:"meta_tags" example:"2021-02-24 20:19:39" binding:"required"`
	Slug             string      `json:"slug" example:"page-1"`
	Discount         float64     `json:"discount" example:"10" `
	NumberActivities int         `json:"number_activities" example:"123"`
	TypeId           int         `json:"type_id" example:"1" binding:"required"`
	References       []Reference `json:"references" example:"[]" binding:"required"`
}

var (
	now *carbon.Carbon
)

func init() {
	now = carbon.Now()
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

func (p *Product) CreateProduct() (bool, string) {
	var excepcioSql utils.ExceptionSql
	var (
		result  bool
		message string
	)

	querySelect := `CALL ksp_create_product(?,?,?,?,?,?,?,?)`
	row := dbBoilerplateGo.Write.QueryRow(querySelect, p.Name, p.Description, p.MetaTitle, p.MetaDescription, p.MetaTags, p.Slug, p.TypeId, now.DateTimeString())

	result = false
	err := row.Scan(&excepcioSql.Level, &excepcioSql.Code, &excepcioSql.Message)
	message = excepcioSql.Message
	fmt.Println(message, row)

	if err != nil {
		result = false
		message = err.Error()

		fmt.Println(message)
	}
	if excepcioSql.Code == 200 {
		result = true
	}

	return result, message + now.DateTimeString()

}

func (p *Product) GenearteSlug() {
	p.Slug = utils.Slug(p.Name)
}

func (p *Product) GenerateReferences() string {
	referenceString := ""
	for i := 0; i < len(p.References); i++ {
		if i > 0 {
			referenceString += "@@@@@@@@"
		}
		referenceString += p.References[i].Name + "&&" + strconv.Itoa(p.References[i].Stock) + "&&" + fmt.Sprintf("%v", p.References[i].Price)
	}
	// fmt.Println("REFERENCES: " + referenceString)
	return referenceString
}
