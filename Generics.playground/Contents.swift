import Cocoa
import Foundation


var greeting = "Hello, playground"


final class Data<T> {
    var data: T 
    
    init(data: T) {
        self.data = data
    }
    
    func getData() -> T {
        return data
    }
    
    func setData(newData: T) {
        data = newData
    }
}

var DataObjs: [Any] = [
    Data(data: "String"),
    Data(data: 3),w
    Data(data: ["key": 2, "key3": 4]),
    Data(data: Set([2,3,4,5])),
    Data(data: [9,8,7,6]),
//    Data(data: UILabel())
]


func printGenericData<T>(data : T){
    print("printing a generic data")
    //        print("data passed: ", data)
    print(String(describing: data))
    print(String(reflecting: type(of: data)))
    }


// initialize generic class with Int data
var intObj = Data<Int>(data: 6)
print("Generic Class returns:", intObj.getData())

// initialize generic class with String data
var strObj = Data<String>(data: "Swift")
print("Generic Class returns:", strObj.getData())

printGenericData(data: DataObjs[3])
printGenericData(data: DataObjs[2])
