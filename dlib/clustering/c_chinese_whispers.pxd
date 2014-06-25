from libcpp.vector cimport vector

cdef extern from "chinese_whispers.h" namespace dlib:

    unsigned long chinese_whispers(const vector[ordered_sample_pair])