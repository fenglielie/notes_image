# MzcyCMake 这是用来配置XXXConfig.cmake的模板
message(STATUS "Mzcy config MyGauss 0.1 begin")


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was MzcyConfig.cmake                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../" ABSOLUTE)

####################################################################################

# MzcyCMake 这是Mzcy_PACKAGE_INIT部分的开始


if("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
        set(programs_path "programs_msvc")
    else()
        set(programs_path "programs")
    endif()
    
set(Mzcy_MyGauss_ROOT "${CMAKE_CURRENT_LIST_DIR}/../${programs_path}/MyGauss_0_1")
set(Mzcy_MyGauss_INCLUDE "${CMAKE_CURRENT_LIST_DIR}/../${programs_path}/MyGauss_0_1/include")
set(Mzcy_MyGauss_LIB "${CMAKE_CURRENT_LIST_DIR}/../${programs_path}/MyGauss_0_1/lib")
include("${CMAKE_CURRENT_LIST_DIR}/../${programs_path}/MyGauss_0_1/cmake/MyGaussTargets.cmake")
Mzcy_GetDepPro(MyGauss MyMatrixBase 0.1)


# MzcyCMake 这是Mzcy_PACKAGE_INIT部分的结束

message(STATUS "Mzcy config MyGauss 0.1  done")
