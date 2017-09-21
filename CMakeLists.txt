cmake_minimum_required(VERSION 3.8)
project(NLP__Unsupervised__sent2vec)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES src/main.cc src/args.h src/args.cc src/dictionary.h src/dictionary.cc src/utils.h src/productquantizer.h src/productquantizer.cc src/vector.h src/vector.cc src/utils.cc src/matrix.h src/matrix.cc src/qmatrix.h src/qmatrix.cc src/model.h src/model.cc src/fasttext.h src/fasttext.cc)

SET( CMAKE_CXX_FLAGS  "-pthread -O3 -funroll-loops")

add_executable(NLP__Unsupervised__sent2vec ${SOURCE_FILES})