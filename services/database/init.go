package database

import (
	"go-service-todo/models"
	"go-service-todo/services/database/postgres"
)

func Init(cfg *models.StoreConfig) (store models.Store, err error) {
	switch cfg.StoreType {
	case "postgres":
		store, err = postgres.Init(cfg)
	}
	err = store.Init()
	if err != nil {
		return nil, err
	}
	return store, err
}
