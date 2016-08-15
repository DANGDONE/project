##Prerequisites
- llvm 3.6 or 3.4

cmake

##How to compile
#LLVM
./configure

#SDDang
mkdir build

cd build

cmake -D LLVM_CONFIG=${PATH_TO_LLVM}/build/bin -D CMAKE_BUILD_TYPE=Release ..


#Notice
We only report one warning for one variable in the same function.
