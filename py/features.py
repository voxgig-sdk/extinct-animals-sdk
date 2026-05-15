# ExtinctAnimals SDK feature factory

from feature.base_feature import ExtinctAnimalsBaseFeature
from feature.test_feature import ExtinctAnimalsTestFeature


def _make_feature(name):
    features = {
        "base": lambda: ExtinctAnimalsBaseFeature(),
        "test": lambda: ExtinctAnimalsTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
