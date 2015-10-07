package lib

import (
	"log"
)

type Object struct {
	value string
}

func NewObject(value string) *Object {
	obj := &Object{
		value: value,
	}
	return obj
}

func (ob *Object) Do(something string) error {
	log.Printf("do %s...\n", something)
	return nil
}
