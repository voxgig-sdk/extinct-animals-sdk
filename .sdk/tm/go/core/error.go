package core

type ExtinctAnimalsError struct {
	IsExtinctAnimalsError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewExtinctAnimalsError(code string, msg string, ctx *Context) *ExtinctAnimalsError {
	return &ExtinctAnimalsError{
		IsExtinctAnimalsError: true,
		Sdk:              "ExtinctAnimals",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *ExtinctAnimalsError) Error() string {
	return e.Msg
}
