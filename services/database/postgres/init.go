package postgres

import (
	"go-service-todo/models"
	db_models "go-service-todo/services/database/models"
)

func Init(cfg *models.StoreConfig) (models.Store, error) {
	store := &db_models.PostgresStore{}
	return store, nil
}
