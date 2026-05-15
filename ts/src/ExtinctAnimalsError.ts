
import { Context } from './Context'


class ExtinctAnimalsError extends Error {

  isExtinctAnimalsError = true

  sdk = 'ExtinctAnimals'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  ExtinctAnimalsError
}

