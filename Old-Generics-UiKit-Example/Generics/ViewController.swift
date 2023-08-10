//
//  ViewController.swift
//  Generics
//
//  Created by Juliano Vaz on 04/11/22.
//

import UIKit


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

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        DataObjs.forEach({ element in
            printGenericData(data: element)
            //            printInfo(element)
        })
        
        initOnlyADataType()
    }
    
    
    var DataObjs: [Any] = [
        Data(data: "String"),
        Data(data: 3),
        Data(data: ["key": 2, "key3": 4]),
        Data(data: Set([2,3,4,5])),
        Data(data: [9,8,7,6]),
        Data(data: UILabel())
    ]
    
    
    func printGenericData<T>(data : T){
        print("printing a generic data")
        //        print("data passed: ", data)
        print(String(describing: data))
        print(String(reflecting: type(of: data)))
    }
    //
    //
    //    func printInfo(_ value: Any) {
    //        let varType = type(of: value)
    //        print("'\(value)' of type '\(varType)'")
    //    }
    
    
    func initOnlyADataType() {
        // initialize generic class with Int data
        var intObj = Data<Int>(data: 6)
        print("Generic Class returns:", intObj.getData())
        
        // initialize generic class with String data
        var strObj = Data<String>(data: "Swift")
        print("Generic Class returns:", strObj.getData())
    }
    
//    func addition<T: Numeric>(num1: T, num2: T) { //restricaod e tipo, T so pode ser int ou double, float...
//        ...
//    }
    
    //Proprio Array usa conceito de generics
    
    // creating a integer type array
    var list1: Array<Int> = []
    
    // creating a string type array
    var list2: Array<String> = []
    
}

