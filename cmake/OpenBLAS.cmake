include(ExternalProject)
set(OpenBLAS_INSTALL ${CMAKE_BINARY_DIR}/OpenBLAS)
externalproject_add(
    OpenBLAS
    SOURCE_DIR      ${PROJECT_SOURCE_DIR}/thirdparty/OpenBLAS
    INSTALL_DIR     ${OpenBLAS_INSTALL}
    CMAKE_ARGS      -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
                    -DCMAKE_INSTALL_PREFIX=${OpenBLAS_INSTALL}
)

set(OpenBLAS_FOUND TRUE)
set(OpenBLAS_INCLUDE_DIR ${OpenBLAS_INSTALL}/include)
set(OpenBLAS_LIBRARIES ${OpenBLAS_INSTALL}/lib/openblas.lib)
set(OpenBLAS_LIBRARY_DIRS ${OpenBLAS_INSTALL}/lib)
set(OpenBLAS_EXTERNAL TRUE)