
cdef class AssetPriceDelegate:
    cdef object c_get_mid_price(self)
    cdef object c_get_high_price(self)
    cdef object c_get_low_price(self)
