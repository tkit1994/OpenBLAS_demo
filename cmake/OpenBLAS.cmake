include(ExternalProject)

# for multi plantform support
if(WIN32)
    set(prefix "")
    set(suffix ".lib")
elseif(APPLE)
    set(prefix "lib")
    set(suffix ".a")
else()
    set(prefix "lib")
    set(suffix ".a")
endif()

set(OpenBLAS_INSTALL ${CMAKE_BINARY_DIR}/OpenBLAS)

externalproject_add(
    OpenBLAS
    SOURCE_DIR      ${PROJECT_SOURCE_DIR}/thirdparty/OpenBLAS
    INSTALL_DIR     ${OpenBLAS_INSTALL}
    CMAKE_ARGS      -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
                    -DCMAKE_INSTALL_PREFIX=${OpenBLAS_INSTALL}
                    # -DCMAKE_Fortran_COMPILER=gfortran-5
                    -DNOFORTRAN=1
                    -DUSE_THREAD=0
    BUILD_BYPRODUCTS "${OpenBLAS_INSTALL}/lib/${prefix}openblas${suffix}"
)

set(OpenBLAS_FOUND TRUE)
set(OpenBLAS_INCLUDE_DIR ${OpenBLAS_INSTALL}/include)
set(OpenBLAS_LIBRARIES "${OpenBLAS_INSTALL}/lib/${prefix}openblas${suffix}")
set(OpenBLAS_LIBRARY_DIRS ${OpenBLAS_INSTALL}/lib)
set(OpenBLAS_EXTERNAL TRUE)