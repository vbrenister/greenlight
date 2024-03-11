package data

import (
	"database/sql"
	"errors"
)

var (
	ErrRecordNotFound = errors.New("models: record not found")
	ErrEditConflict   = errors.New("models: edit conflict")
)

type Models struct {
	Movies MovieModel
}

func NewModels(db *sql.DB) Models {
	return Models{
		Movies: MovieModel{
			DB: db,
		},
	}
}
