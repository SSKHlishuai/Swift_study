//
//  ViewController.swift
//  Swift-one
//
//  Created by mc on 15/6/9.
//  Copyright (c) 2015年 mc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let floate: Float = 4
        println(floate)
        
        let label = "my jff s "
        let sss = 94
        let labelsss = label + String(sss)
        println(labelsss)
        
        
        let apples = 2
        let pa = 5
        let applestr = "i have \(apples) apples"
        let applepa = "i have \(apples + pa) sssssssss"
        println(applestr)
        println(applepa)
        
        
        var onearr = ["1","one","2","two"]
        onearr[1] = "100"
        
        println(onearr)
        
        var onedict = ["key1":"value1","key100":"value100"]
        onedict["key200"]="value200"
        onedict["key1"] = "value-1"
        println(onedict)
        
        
        //初始化数组
        let emptyArr = [String]()
        
        //初始化字典
        let emptyDict = Dictionary<String,Float>()
        
        
        let twoarr = [122,222,55,77,66]
        var temp = 0
        for score in twoarr {
            if score>55
            {
                temp += 10;
            }
            else
            {
                
            }
        }
        println(temp)
        
        
        //变量可选值:String?
        var string1:String? = "hellow"
        string1 = nil
        var string2:String? = "what is your name"
        string2 = nil
        var greetint = "hello!"
        if let name = string2{
            greetint = "hello \(name)"
        }
        else{
            greetint = "hello "
        }
        println(string1)
        println(greetint)
        
        
        
        //switch 不用写break
        var vegetableVar:String
        let vegetable = "red pup"
        switch vegetable{
            case "celety":
                vegetableVar = "celetu"
            case "sssssss":
                vegetableVar = "ssssss"
            default:
                vegetableVar = "default"
        }
        
        println(vegetableVar)
        
        
        //for-in 句型
        let forindict = [
            "key1" : [1,2,3,4,5,6],
            "key2" : [10,20,30,40,50,60,70],
            "key3" : [100,200,300,400,500,600,700,800],
        
        ]
        
        var forintemp = 0
        
        for(kind,numbers) in forindict{
            println("kind = \(kind)")
           // println("numbers = \(numbers)")
          //  println("forindict = \(forindict)")
            for number in numbers{
                if number > forintemp{
                    forintemp = number

                }
            }
        }
        println(forintemp)
        
        //while
        
        var n=100
        while n<100 {
            n += 1
        }
        println("while n = \(n)")
        
        var m = 100
        do{
            m += 1
        
        }while m<100
        
        
        println("while m = \(m)")
        
        
        //for in 使用...表示范围 和传统等价
        var forinloop = 1;
        for i in 1..<3 {
            forinloop += i
        }
        println(forinloop);
        
        for var i=0;i<3;++i{
            forinloop += i
        }
        println(forinloop)
        //注 ： ...闭区间 ..< 半闭区间
        
        
        //函数
        func greet (name:String,name2:Int) -> String
        {
            return "name + \(name2)"
        }
        
        var funcstr1 = greet("wwww", 100)
        println(funcstr1)
        
        func getFloat() -> (Double,Double,Double)
        {
            return(22.2,222.2,22222.2)
        }
        
        
        println(getFloat())
        
        func varint(numbers:Int...) -> Int
        {
            var _varint = 0
            for i in numbers{
                _varint += i
            }
            return _varint
        }
        
        println(varint(22,11,33))
        
        
        //嵌套函数
        func returnFifteen() -> Int
        {
            var y = 10
            func add (){
                y += 5
            }
            
            add()
            return y
        }
        
        println(returnFifteen())
        
        
        //∆∆∆ 函数指针函数作为返回值
        func funczhizhen () -> (Int -> Int)
        {
            func addone (number: Int)->Int
            {
                return 100+number
            }
            
            return addone
            
        }
        
        var funczhizhen2 = funczhizhen()
        println(funczhizhen2(7))
        
        //∆∆∆函数作为参数
        func funccanshu (list: [Int], canshu:Int->Bool) -> Bool
        {
            for item in list {
                if canshu(item){
                    return true
                }
                
            }
            return false
        }
        
        func canshu222(number:Int)->Bool
        {
            return number < 15
        }
        
        
        var number = [10,12,13]
        
        println(funccanshu(number,canshu222))
        
        //￼函数实际上是一种特殊的闭包,你可以使用{}来创建一个匿名闭包。使用 in 来分割参数并返 回类型
      
        
        var bibao = funccanshu([1,2,3,4], {(s:Int) in return s>4})
        println(bibao)
        
        //class和类名   ￼使用 class 和类名来创建一个类。类中属性的声明和常量、变量声明一样,唯一的区别就是 它们的上下文是类。同样,方法和函数声明也一样
        class Shapes {
            var numberofside=0
            func simpleshapes()->String
            {
                return "a Shapes func"
            }

        }
        
        var shape = Shapes()
        shape.numberofside = 4
        println("\(shape.numberofside)"+shape.simpleshapes())
        
        
        //这个版本的 Shape 类缺少了一些重要的东西:一个构造函数来初始化类实例。使用 init 来 创建一个构造器
        class ShaperNumber {
            var age:Int = 14
            var name:String
            
            
            init(name:String){
                self.name = name
                
            }
            
            
            
            func simpleDescription() -> String{
                return "a sharpernumber with \(age) \(name) "
            }
            
            
        }
        
        var sharpernumber = ShaperNumber(name: "xinyiyunmei")
        sharpernumber.age = 15
        println(sharpernumber.simpleDescription())
        
        
        //子类重写父类方法
        class OneShaperN : ShaperNumber{
            var userid:Double
            
            init(userid:Double,name:String) {
                self.userid = userid
                super.init(name: name)
                age = 19
                
            }
            
            func area() -> Double{
                return userid*userid;
            }
            override func simpleDescription() -> String {
                return "a oneshaper \(name) \(userid) \(age)"
            }
        
            
        }
        let test = OneShaperN(userid: 12.4, name: "iiiiiii")
        
        println(test.simpleDescription())
        
        //getter setter 
        class TwoShaperN : ShaperNumber{
            var radio:Double = 0.0
            init(radio:Double,name:String){
                self.radio = radio
                super.init(name: name)
                age = 123
            }
            
            
            
            var allage:Double {
                get{
                    return Double(age)*0.001
                }
                set{
                    radio = newValue / 3
                }
                
            }
            
            override func simpleDescription() -> String {
                return "a Twoshaper name \(allage)  \(age) "
            }



        }
        
        var twoShape = TwoShaperN(radio: 14.0, name: "oooooooo")
        twoShape.allage = 222
        println(twoShape.simpleDescription())
        
        //∆∆∆willset didiset 不需要计算属性但是需要在设置一个新值之前运行一些代码,使用 willSet 和 didSet。
        class Sanjiaoxing {
            var trangle : TwoShaperN {
                willSet{
                    square.userid = newValue.radio
                }
            }

            var square : OneShaperN{
                willSet{
                    trangle.radio = newValue.userid
                    
                }
            }
            
            init(size:Double,name:String){
                square = OneShaperN(userid: size, name: name)
                trangle = TwoShaperN(radio: size, name: name)
                
            }
        }
        var sanjiaoxing = Sanjiaoxing(size: 10, name: "uuuuuu")
        println("square = \(sanjiaoxing.square.userid)")
        println("trangle = \(sanjiaoxing.trangle.radio)"+sanjiaoxing.trangle.name)
        
        
        //∆∆∆类中的方法
        
        class finalClase{
            
            
            var count:Int = 0
            func finalclaaa(amount:Int ,numberoftimes times:Int){
                count += amount*times
            }
        
            
            
            
            
        }
        
        var countes = finalClase()
        countes.finalclaaa(2, numberoftimes: 4)
        println(countes.count)
        //下面的类确保三角形的边长总是和正方形的边长相同。
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

