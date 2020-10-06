# Install script for directory: /home/shiqing/catkin_ws_turtlebot3/src/turtlebot3_autodrive

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/shiqing/catkin_ws_turtlebot3/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shiqing/catkin_ws_turtlebot3/build/turtlebot3_autodrive/catkin_generated/installspace/turtlebot3_autodrive.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_autodrive/cmake" TYPE FILE FILES
    "/home/shiqing/catkin_ws_turtlebot3/build/turtlebot3_autodrive/catkin_generated/installspace/turtlebot3_autodriveConfig.cmake"
    "/home/shiqing/catkin_ws_turtlebot3/build/turtlebot3_autodrive/catkin_generated/installspace/turtlebot3_autodriveConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_autodrive" TYPE FILE FILES "/home/shiqing/catkin_ws_turtlebot3/src/turtlebot3_autodrive/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_autodrive/turtlebot3_autodrive" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_autodrive/turtlebot3_autodrive")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_autodrive/turtlebot3_autodrive"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_autodrive" TYPE EXECUTABLE FILES "/home/shiqing/catkin_ws_turtlebot3/devel/lib/turtlebot3_autodrive/turtlebot3_autodrive")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_autodrive/turtlebot3_autodrive" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_autodrive/turtlebot3_autodrive")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_autodrive/turtlebot3_autodrive"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-9/plugins:/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_autodrive/turtlebot3_autodrive")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/turtlebot3_autodrive" TYPE DIRECTORY FILES "/home/shiqing/catkin_ws_turtlebot3/src/turtlebot3_autodrive/include/turtlebot3_autodrive/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_autodrive" TYPE DIRECTORY FILES
    "/home/shiqing/catkin_ws_turtlebot3/src/turtlebot3_autodrive/launch"
    "/home/shiqing/catkin_ws_turtlebot3/src/turtlebot3_autodrive/models"
    "/home/shiqing/catkin_ws_turtlebot3/src/turtlebot3_autodrive/rviz"
    "/home/shiqing/catkin_ws_turtlebot3/src/turtlebot3_autodrive/worlds"
    )
endif()
