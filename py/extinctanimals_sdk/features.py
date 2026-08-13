# ExtinctAnimals SDK feature factory

from extinctanimals_sdk.feature.base_feature import ExtinctAnimalsBaseFeature
from extinctanimals_sdk.feature.test_feature import ExtinctAnimalsTestFeature


def _make_feature(name):
    features = {
        "base": lambda: ExtinctAnimalsBaseFeature(),
        "test": lambda: ExtinctAnimalsTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
