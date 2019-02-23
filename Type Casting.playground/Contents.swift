// Type Casting

import UIKit

var str: String?

var array: [AnyObject?] = ["Hello", "Hi", "ABC", 1, 2, 89, 120, nil, nil, str] as [AnyObject]

var returnString: String = ""
var sum: Int = 0
var countNilObject = 0

print(array)

for i in array {
    
    if i is String {
        returnString = returnString + (i as! String) + " "
    }
    
    if i is Int {
        sum += (i as! Int)
    }
    
    if i == nil {
        countNilObject += 1
    }
}

print(returnString)
print(sum)
print(countNilObject)
