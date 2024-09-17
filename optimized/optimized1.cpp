#include <iostream>
#include <unordered_map>

using namespace std;

unordered_map <int, int> cache;

int tribonacci(int n) 
{
    if (n == 0 || n == 1) 
    {
        return 0;
        
    } 
    else if (n == 2) 
    {
        return 1;
    } 
    else 
    {
        if (cache.find(n) != cache.end()) 
        {
            return cache[n];
        } 
        else 
        {
            cache[n] = tribonacci(n - 1) + tribonacci(n - 2) + tribonacci(n - 3);
            return cache[n];
        }
    }
}

int main() 
{
    cout << tribonacci(100) << endl;
    return 0;
}