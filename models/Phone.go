package models

type Phone struct {
	Id        int    `json:"id"`
	Phone     string `json:"phone"`
	Principal int    `json:"principal"`
	CountryId int    `json:"country_id"`
}
