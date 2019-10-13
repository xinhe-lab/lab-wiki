# OpenMP in C++, a toy example

## Example
Create a file `test.cpp`
```cpp
#include <iostream>
#include <thread>
#include <chrono>
#include <omp.h>
#include <vector>
#include <stdlib.h> 

int f(int i) {
  std::this_thread::sleep_for (std::chrono::seconds(1));
  return i;
}

int main(int argc, char* argv[])
{
  int n_threads = atoi(argv[1]);
  std::cout << n_threads << " threads ..." << std::endl;
  std::vector<int> M(25);
#pragma omp parallel for num_threads(n_threads)
  for (int i=0; i<25; i++)
    M[i] = f(i);
  return 0;
}
```
and compile with 
```bash
g++ test.cpp -fopenmp -std=c++11 -o test.exe
```
and run it:
```
[GW] time ./test.exe 1
1 threads ...

real    0m25.004s
user    0m0.000s
sys    0m0.000s
[GW] time ./test.exe 2
2 threads ...

real    0m13.002s
user    0m0.000s
sys    0m0.000s
[GW] time ./test.exe 4
4 threads ...
 
real    0m7.003s
user    0m0.016s
sys    0m0.000s
```

## Contact
Gao Wang