//
//  ViewController.swift
//  Swift-基础部分
//
//  Created by mc on 15/6/11.
//  Copyright (c) 2015年 mc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let minValue = UInt8.min
        let maxValue = UInt8.max
        println(minValue)
        println(maxValue)
        
        //下面的所有整数字面量的十进制都是17
        let decimalinteger = 17
        let binaryInteger = 0b10001
        let octalInteger = 0o21
        let hexadecimalInteger = 0x11
        
        //十进制的指数为exp    那这个数相当于基数和$10^{exp}$的乘积
        let floatTest1 = 1.25e2
        println(floatTest1)
        
        //十六进制的指数
        let floatTest2 = 0xFp2
        println(floatTest2)
        
        
        //UInt16 与 UInt8 相加
        let twoThousadn: UInt16 = 2_000
        let one: UInt8 = 1
        let twoTousandAndOne = twoThousadn + UInt16(one)
        println(twoTousandAndOne)
        
        //float -> int ->float
        let three = 3
        let xiaoshu = 0.1415926
        let pi = Double(three)+xiaoshu
        println(pi)
        
        
        //定义类型别名typealias
        typealias AudioSimple = UInt16
        var maxAmplitudeFound = AudioSimple.min
        
        
        //元组
        let http404Error = (404,"Not Found")
        let (statusCode, statusMessage) = http404Error
        
        println("1.the status code is \(statusCode)")
        println("2.the status message i s \(statusMessage)")
        
        let (justTheStatusCode, _) = http404Error
        
        println("3.the status just code is \(justTheStatusCode) ")
        
        
        //通过下标访问元组成员
        println("4.the statuse 1 code is \(http404Error.0)")
        println("5.the statuse 2 message is \(http404Error.1)")
        
        
        //给元组元素命名
        let http200Status = (statusCode:200 , description:"OK")
        
        println(" 6.the  status code is \(http200Status.statusCode) ")
        println("7. the status message is \(http200Status.description)")
        
        
        //注意:元组在临时组织值的时候很有用,但是并不适合创建复杂的数据结构。如果你的数
        //据结构并不是临时使用,请使用类或者结构体而不是元组。请参考类和结构体
        
        //optional   可选 来处理值可能缺失的情况
        
        let possibleNumber = "hello world"//123
        let convertedNumber:Int? = possibleNumber.toInt()
        if convertedNumber != nil {
            println("\(possibleNumber) has an interger value of \(convertedNumber)")
        }
            else{
            println("\(possibleNumber) could not be converted to an integer")
        }
        
        
//        
//        if let constanName = sonmOptional {
//            statements
//        }
        
        //你可以像上面这样使用可选绑定来重写 possibleNumber 这个例子:
        
        
        
        if let actualNumber = possibleNumber.toInt() {
            println("\(possibleNumber) has an integer value of \(actualNumber)")
            
        }
        
        
        else
        {
            println("\(possibleNumber) could not be converted to an integer")
        }
        
        
        //隐式解析可选
        
        let possibleString:String? = "An optional string."
        println(possibleString!)//需要惊叹号来获取  输出：An optional string.
        println(possibleString)//输出：Optional("An optional string.")

        let assumedString:String! = "An implicitly unwrapped optional string."
        println(assumedString)
        
//        if assumedString != nil {//必须有！
//            println(assumedString)
//        }
        
        if let definiteString = assumedString{//必须有！
            println(definiteString)
        }
        //断言
        let age = 3//-3
        assert(age >= 0, "A person's age cannot be less than zero")
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

