clang -emit-llvm diffCases.c -c -o diffCases.bc
opt -load /home/fff000/Documents/nodang/llvm/build/src/libNoDangPass.so -NoDang  diffCases.bc -o diffCases_tar.bc
