package models

type AuthServiceConfig struct {
	StoreType string `json:"store,omitempty"`
	Password  string `json:"password,omitempty"`
	UserName  string `json:"username,omitempty"`
}
