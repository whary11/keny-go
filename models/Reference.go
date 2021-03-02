package models

type Reference struct {
	Id        int     `json:"id" example:"123"`
	Name      string  `json:"name" example:"Paracetamol"`
	ViewFront int     `json:"view_front" example:"luis.raga@keny.com"`
	Price     string  `json:"price" example:"2021-02-24 20:19:39"`
	Stock     int     `json:"stock" example:"2021-02-24 20:19:39"`
	Color     string  `json:"color" example:"2021-02-24 20:19:39"`
	Images    []Image `json:"images" example:"2021-02-24 20:19:39"`
}
