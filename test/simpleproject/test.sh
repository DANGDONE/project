make clean
make bcTest
opt -load /home/fff000/Documents/nodang/llvm/build/src/libNoDangPass.so -NoDang tests.bc -o tests_tar.bc
