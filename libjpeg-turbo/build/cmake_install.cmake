# Install script for directory: /home/ethan/Projects/f3d-img/libjpeg-turbo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/libjpeg-turbo")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libturbojpeg.so.0.2.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libturbojpeg.so.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/opt/libjpeg-turbo/lib64")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/build/libturbojpeg.so.0.2.0"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/build/libturbojpeg.so.0"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libturbojpeg.so.0.2.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libturbojpeg.so.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "::::::::::::::::::::::::"
           NEW_RPATH "/opt/libjpeg-turbo/lib64")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libturbojpeg.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libturbojpeg.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libturbojpeg.so"
         RPATH "/opt/libjpeg-turbo/lib64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES "/home/ethan/Projects/f3d-img/libjpeg-turbo/build/libturbojpeg.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libturbojpeg.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libturbojpeg.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libturbojpeg.so"
         OLD_RPATH "::::::::::::::::::::::::"
         NEW_RPATH "/opt/libjpeg-turbo/lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libturbojpeg.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench"
         RPATH "/opt/libjpeg-turbo/lib64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/ethan/Projects/f3d-img/libjpeg-turbo/build/tjbench")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench"
         OLD_RPATH "/home/ethan/Projects/f3d-img/libjpeg-turbo/build:"
         NEW_RPATH "/opt/libjpeg-turbo/lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/ethan/Projects/f3d-img/libjpeg-turbo/build/libturbojpeg.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/ethan/Projects/f3d-img/libjpeg-turbo/turbojpeg.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/ethan/Projects/f3d-img/libjpeg-turbo/build/libjpeg.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom"
         RPATH "/opt/libjpeg-turbo/lib64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/ethan/Projects/f3d-img/libjpeg-turbo/build/rdjpgcom")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom"
         OLD_RPATH "::::::::::::::::::::::::"
         NEW_RPATH "/opt/libjpeg-turbo/lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom"
         RPATH "/opt/libjpeg-turbo/lib64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/ethan/Projects/f3d-img/libjpeg-turbo/build/wrjpgcom")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom"
         OLD_RPATH "::::::::::::::::::::::::"
         NEW_RPATH "/opt/libjpeg-turbo/lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/doc" TYPE FILE FILES
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/README.ijg"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/README.md"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/example.txt"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/tjexample.c"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/libjpeg.txt"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/structure.txt"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/usage.txt"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/wizard.txt"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/LICENSE.md"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/man/man1" TYPE FILE FILES
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/cjpeg.1"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/djpeg.1"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/jpegtran.1"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/rdjpgcom.1"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/wrjpgcom.1"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/pkgconfig" TYPE FILE FILES
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/build/pkgscripts/libjpeg.pc"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/build/pkgscripts/libturbojpeg.pc"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/build/jconfig.h"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/jerror.h"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/jmorecfg.h"
    "/home/ethan/Projects/f3d-img/libjpeg-turbo/jpeglib.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ethan/Projects/f3d-img/libjpeg-turbo/build/simd/cmake_install.cmake")
  include("/home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib/cmake_install.cmake")
  include("/home/ethan/Projects/f3d-img/libjpeg-turbo/build/md5/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ethan/Projects/f3d-img/libjpeg-turbo/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
