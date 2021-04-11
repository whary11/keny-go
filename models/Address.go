package models

type Address struct {
	Id                int    `json:"id" xml:"id"`
	ViaGenerator      string `json:"via_generator" binding:"required"`
	Complement        string `json:"complement" `
	ValueViaGenerator string `json:"value_via_generator" binding:"required"`
	ViaNumber         string `json:"via_number" binding:"required"`
	House             string `json:"house" binding:"required"`
	Principal         int    `json:"principal" binding:"required"`
	CityId            int    `json:"city_id"`
}
