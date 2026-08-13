# ExtinctAnimals SDK utility: make_context

from projectname_sdk.core.context import ExtinctAnimalsContext


def make_context_util(ctxmap, basectx):
    return ExtinctAnimalsContext(ctxmap, basectx)
