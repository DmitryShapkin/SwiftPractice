// Given an array with 1001 elements
// every element has a repeated value
// and only one element doesn't have a pair (unique element in array)
// You should find this unique number with 0(n) time

var array = [1,1,2,2,3,3,4,5,5,6,6,7,7]
var unique = array.reduce(0, ^)
print(unique)

// To solve this task you should do XOR:
// [1^1^2^2^3^3^4^5^5^6^6^7^7]
// Dmitry Shapkin
