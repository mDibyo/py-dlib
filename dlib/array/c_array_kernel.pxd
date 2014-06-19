cdef extern from "../interfaces/enumerable.h" namespace "dlib":

    cdef cppclass enumerable[T]:
        pass


cdef extern from "array_kernel.h" namespace "dlib":

    cdef cppclass array[T, mem_manager=default_memory_manager](enumerable):
        ctypedef array kernel_1a
        ctypedef array kernel_1a_c
        ctypedef array kernel_2a
        ctypedef array kernel_2a_c
        ctypedef array sort_1a
        ctypedef array sort_1a_c
        ctypedef array sort_1b
        ctypedef array sort_1b_c
        ctypedef array sort_2a
        ctypedef array sort_2a_c
        ctypedef array sort_2b
        ctypedef array sort_2b_c
        ctypedef array expand_1a
        ctypedef array expand_1a_c
        ctypedef array expand_1b
        ctypedef array expand_1b_c
        ctypedef array expand_1c
        ctypedef array expand_1c_c
        ctypedef array expand_1d
        ctypedef array expand_1d_c