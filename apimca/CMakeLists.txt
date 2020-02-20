cmake_minimum_required(VERSION 2.8)
project( apimca CXX )

message(STATUS "=======>> CMake untuk apimca Dimulai ....!")

find_package( OpenCV REQUIRED )
#find_package( cpprestsdk REQUIRED)


#Use c++17 : https://stackoverflow.com/questions/45688522/how-to-enable-c17-in-cmake/53830867
set(CMAKE_CXX_STANDARD 17)
if(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /std:c++17")
endif(MSVC)

# https://github.com/kpeeters/cadabra2/issues/66
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -pthread -lcrypto")


# Compile and Run 
set( sources main.cpp )
add_executable( apimca ${sources} )
target_compile_options( apimca PUBLIC -std=c++17 -fpermissive -w -Wall )




# info: https://stackoverflow.com/questions/46106540/cpprest-sdk-on-clion-using-cmake-on-mac
# Microsoft RESTful API Package (Casablanca)
set(CppREST_INCLUDE /usr/include/cpprest)
set(CppREST_LIBRARIES /usr/lib/x86_64-linux-gnu/libcpprest.so)
set(Crypto_LIBRARIES /usr/lib/x86_64-linux-gnu/libcrypto.so)


include_directories(${CppREST_INCLUDE})

target_link_libraries( apimca ${OpenCV_LIBS} -L/usr/lib64 -ldl )

set(LINK_LIBRARIES1 
    ${CppREST_LIBRARIES}
    ${Crypto_LIBRARIES}
    #...Library_Lainnya
    )

target_link_libraries(apimca ${LINK_LIBRARIES1})