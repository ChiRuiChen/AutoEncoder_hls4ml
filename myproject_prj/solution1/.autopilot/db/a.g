#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/silencekugelee05/hls4ml/Dylan_LargeCNN/denoise_mnist/myproject_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
