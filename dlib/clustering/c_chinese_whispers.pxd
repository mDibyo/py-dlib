# imports and includes

from libcpp.vector cimport vector as std_vec

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

    unsigned long chinese_whispers(const std_vec[ordered_sample_pair]& edges,
                                   std_vec[unsigned long]& labels,
                                   const unsigned long num_iterations,
                                   rand& rnd)
    
    unsigned long chinese_whispers(const std_vec[sample_pair]& edges,
                                   std_vec[unsigned long]& labels,
                                   const unsigned long num_iterations,
                                   rand& rnd)
    
    unsigned long chinese_whispers(const std_vec[ordered_sample_pair]& edges,
                                   std_vec[unsigned long]& labels,
                                   const unsigned long num_iterations=100)
    
    unsigned long chinese_whispers(const std_vec[ordered_sample_pair]& edges,
                                   std_vec[unsigned long]& labels,
                                   const unsigned long num_iterations=100)