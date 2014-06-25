# imports and includes

from libcpp.vector cimport vector

cdef extern from "../rand.h" namespace dlib:
    cdef cppclass rand:
        pass

cdef extern from "../graph_utils/ordered_sample_pair_abstract.h" namespace dlib:
    cdef cppclass ordered_sample_pair:
        pass

cdef extern from "../graph_utils/sample_pair_abstract.h" namespace dlib:
    cdef cppclass sample_pair:
        pass


# definitions

cdef extern from "chinese_whispers.h" namespace dlib:

    unsigned long chinese_whispers(const vector[ordered_sample_pair])