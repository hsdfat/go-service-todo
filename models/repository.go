package models

type Store interface {
	Init() error
	ConnectDB() error
}

type StoreConfig struct {
	StoreType string
	StoreURL  string
	Password  string
	UserName  string
}
