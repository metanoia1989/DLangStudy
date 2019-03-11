import std.stdio, std.array;

bool binarySearch(T) (T[] input, T value) {
    while (!input.empty)
    {
        auto i = input.length / 2;
        auto mid = input[i];
        if (mid > value) input = input[0 .. i];
        else if (mid < value) input = input[i + 1 .. $]; 
        else return true;
    }
    return false;
}

bool binarySearchRecursive(T) (T[] input, T value) {
    if (input.empty) return false;
    auto i = input.length / 2;
    auto mid = input[i];
    if (mid > value) return binarySearch(input[0 .. i], value);
    if (mid < value) return binarySearch(input[i + 1..$], value);
    return true;
}

void main()
{
    writeln("hello world");
}

unittest
{
    int[] arr = [ 1, 3, 6, 7, 9, 15 ];
    assert(binarySearch!(int)(arr, 7));
    assert(!binarySearch!(int)(arr, 5));
}
