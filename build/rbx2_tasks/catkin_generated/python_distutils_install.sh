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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/oligay_61/zone3/src/rbx2/rbx2_tasks"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/oligay_61/zone3/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/oligay_61/zone3/install/lib/python2.7/dist-packages:/home/oligay_61/zone3/build/rbx2_tasks/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/oligay_61/zone3/build/rbx2_tasks" \
    "/usr/bin/python2" \
    "/home/oligay_61/zone3/src/rbx2/rbx2_tasks/setup.py" \
     \
    build --build-base "/home/oligay_61/zone3/build/rbx2_tasks" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/oligay_61/zone3/install" --install-scripts="/home/oligay_61/zone3/install/bin"
