#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/shiqing/catkin_ws_turtlebot3/src/turtlebot3/turtlebot3_teleop"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/shiqing/catkin_ws_turtlebot3/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/shiqing/catkin_ws_turtlebot3/install/lib/python2.7/dist-packages:/home/shiqing/catkin_ws_turtlebot3/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/shiqing/catkin_ws_turtlebot3/build" \
    "/usr/bin/python2" \
    "/home/shiqing/catkin_ws_turtlebot3/src/turtlebot3/turtlebot3_teleop/setup.py" \
    build --build-base "/home/shiqing/catkin_ws_turtlebot3/build/turtlebot3/turtlebot3_teleop" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/shiqing/catkin_ws_turtlebot3/install" --install-scripts="/home/shiqing/catkin_ws_turtlebot3/install/bin"
