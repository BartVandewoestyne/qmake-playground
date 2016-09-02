TEMPLATE = app

# This works with nmake, but not with msbuild :-(
myPreTargetDepsTarget.target = .PreTargetDepsMakefileTarget
myPreTargetDepsTarget.commands += @echo "Pre Target Deps Action"
myPostTargetDepsTarget.target = .PostTargetDepsMakefileTarget
myPostTargetDepsTarget.commands += @echo "Post Target Deps Action"
QMAKE_EXTRA_TARGETS += myPreTargetDepsTarget \
                       myPostTargetDepsTarget
PRE_TARGETDEPS += .PreTargetDepsMakefileTarget
POST_TARGETDEPS += .PostTargetDepsMakefileTarget

SOURCES += hello_world.cpp
