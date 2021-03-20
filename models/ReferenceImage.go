package models

import (
	"fmt"
)

type Images struct {
	Images      []Image `json:"images" example:"123"`
	ReferenceId int     `json:"reference_id" example:"Paracetamol"`
}

type Image struct {
	Id  int    `json:"id" example:"123"`
	Url string `json:"url" example:"Paracetamol"`
}

func (i *Images) GetImagesByReferenceId() (status bool, message string) {
	var image Image
	querySelect := `
		SELECT 
		ri.id,ri.url
		FROM reference_images ri
		WHERE ri.reference_id = ?; `

	rows, err := dbBoilerplateGo.Read.Query(querySelect, i.ReferenceId)
	if err != nil {
		fmt.Println(err.Error())
		return false, err.Error()
	}

	defer rows.Close()
	for rows.Next() {

		if err := rows.Scan(&image.Id, &image.Url); err != nil {
			fmt.Println(err.Error())
		}
		i.Images = append(i.Images, image)
	}
	// if product.Id == 0 {
	// 	return false, "No se encontró información"
	// }
	return true, "Consulta exitosa"
}
