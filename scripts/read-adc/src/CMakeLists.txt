set(RPI_SOURCES
  "RPi.cc"
  "SPI.hh"
  "ads1118.hh"
)

set(CMAKE_CXX_FLAGS "-std=gnu++1y")

add_library(rpi ${RPI_SOURCES})
target_include_directories(rpi PUBLIC ".")
target_include_directories(rpi PUBLIC "../fmtlib")
#target_compile_features(rpi PUBLIC "cxx_std_17")
target_link_libraries(rpi)

install(
  TARGETS rpi
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin
)

add_subdirectory("logger")
