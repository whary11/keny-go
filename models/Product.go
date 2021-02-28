package models

import (
	"fmt"
)

type Product struct {
	Id              int    `json:"id" example:"123"`
	Name            string `json:"name" example:"Paracetamol"`
	Description     string `json:"description" example:"luis.raga@keny.com"`
	MetaTitle       string `json:"meta_title" example:"2021-02-24 20:19:39"`
	MetaDescription string `json:"meta_description" example:"2021-02-24 20:19:39"`
	MetaTags        string `json:"meta_tags" example:"2021-02-24 20:19:39"`
	Slug            string `json:"slug" example:"page-1"`
	References      []Reference
}

func (product *Product) GetProductBySlug() (status bool, message string) {

	var reference Reference
	querySelect := `
		SELECT 
		-- info product
		p.id,p.name,
		p.slug,p.description,p.meta_title,p.meta_description,p.meta_tags,
		-- info references
		rh.id reference_id
		,r.name reference_name,r.color, r.view_front,rh.price,rh.stock 
		FROM products p
		INNER join keny.references r on p.id = r.product_id
		INNER join references_headquarters rh on rh.reference_id = r.id 
		WHERE slug = ?; `

	fmt.Println(product.Slug)
	rows, err := dbBoilerplateGo.Read.Query(querySelect, product.Slug)
	if err != nil {
		fmt.Println(err.Error())
		return false, err.Error()
	}

	defer rows.Close()
	for rows.Next() {
		if err := rows.Scan(&product.Id, &product.Name, &product.Slug, &product.Description, &product.MetaTitle,
			&product.MetaDescription, &product.MetaTags, &reference.Id, &reference.Name, &reference.Color,
			&reference.ViewFront, &reference.Price, &reference.Stock); err != nil {
			fmt.Println(err.Error())
		}
		fmt.Println(reference.Name)
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
