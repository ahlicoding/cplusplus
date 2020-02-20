cmake_minimum_required(VERSION 2.8)
project( freetype_tutorial CXX )


find_package( OpenCV REQUIRED )
#find_package( cpprestsdk REQUIRED)


# Compile and Run 
set( sources main.cpp )
add_executable( freetype_tutorial ${sources} )
target_compile_options( freetype_tutorial PUBLIC -std=c++11 -fpermissive -w -Wall )



# info: https://stackoverflow.com/questions/46106540/cpprest-sdk-on-clion-using-cmake-on-mac
# Microsoft RESTful API Package (Casablanca)
set(CppREST_INCLUDE /usr/include/cpprest)
set(CppREST_LIBRARIES /usr/lib/x86_64-linux-gnu/libcpprest.so)

include_directories(${CppREST_INCLUDE})

target_link_libraries( freetype_tutorial ${OpenCV_LIBS} -L/usr/lib64 -ldl )

set(LINK_LIBRARIES1 
    ${CppREST_LIBRARIES}
    #Library_Lainnya
    )

target_link_libraries(freetype_tutorial ${LINK_LIBRARIES1})