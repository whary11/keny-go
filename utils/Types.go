package utils

type Response map[string]interface{}

type ExceptionSql struct {
	Level   string
	Code    int
	Message string
}

type Login struct {
	Email    string `json:"email" binding:"required"`
	Password string `json:"password,omitempty" binding:"required"`
}
