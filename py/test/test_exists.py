# ProjectName SDK exists test

import pytest
from extinctanimals_sdk import ExtinctAnimalsSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = ExtinctAnimalsSDK.test(None, None)
        assert testsdk is not None
