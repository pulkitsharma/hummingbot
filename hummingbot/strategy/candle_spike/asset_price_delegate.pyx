from decimal import Decimal


cdef class AssetPriceDelegate:
    # The following exposed Python functions are meant for unit tests
    # ---------------------------------------------------------------
    def get_mid_price(self) -> Decimal:
        return self.c_get_mid_price()
    # ---------------------------------------------------------------

    cdef object c_get_mid_price(self):
        raise NotImplementedError

    cdef object c_get_high_price(self):
        raise NotImplementedError

    cdef object c_get_low_price(self):
        raise NotImplementedError

    @property
    def ready(self) -> bool:
        raise NotImplementedError
