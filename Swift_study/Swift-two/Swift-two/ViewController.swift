//
//  ViewController.swift
//  Swift-two
//
//  Created by mc on 15/6/10.
//  Copyright (c) 2015年 mc. All rights reserved.
//

import UIKit


protocol ExampleProtocol{
    var simpleDescription:String{get}
    mutating func adjust()
}

extension Int: ExampleProtocol{
    var simpleDescription:String{
        return "nunmber \(self)"
    }
    mutating func adjust(){
        self += 42
    }
}
class ViewController: UIViewController {

    enum ServerResponse {
        case Result(String,String)
        case Error (String)
        
    }
    let success = ServerResponse.Result("6:00am", "8:00pm")

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       //枚举和结构体
        enum Rank:Int{
            case Ace = 1
            case Two,Three,Four,Five,Six,Seven,Eight,Nine,Ten
            case Jack,King,Queen
            func simpleDecription()->String{
                switch self{
                case .Ace:
                    return "ace"
                case .Jack:
                    return "jack"
                case .King:
                    return "king"
                case .Queen:
                    return "queen"
                default:
                    return String(self.rawValue)
                }
                
            }
        
        }
        //let act = Rank(rawValue: 1)
        let act = Rank.Ace
        let row = act.rawValue
        println(act)
        
        var cocoo:String = ""
        if let commm = Rank(rawValue: 3)
        {
            cocoo = commm.simpleDecription()
        }
        
        println(cocoo)
        
        
        //仍然枚举
        enum Suit{
            case one1,two1,three1,four1
            func simpleDs() -> String{
                switch self{
                case .one1:
                    return "1"
                case .two1:
                    return "2"
                case .two1:
                    return "3"
                case .four1:
                    return "4"
                default:
                    return "nill"
                }
            }
            
            
            
        }
        let hearts = Suit.four1
        let ssss = hearts.simpleDs()
        
        
        println(ssss)
        
        
        
        struct Card{
            var suit:Suit
            var rank:Rank
            
            func simb()->String{
                return "the \(suit.simpleDs()) with the \(rank.simpleDecription())"
            }
            
            
        }
        
        
        let card:Card = Card(suit: .four1, rank: .Ace)
        let cardddddddd = card.simb()
        println(cardddddddd)
        
        //给 Card 添加一个方法,创建一副完整的扑克牌并把每张牌的 rank 和 suit 对应起来。
       // 一个枚举成员的实例可以有实例值。相同枚举成员的实例可以有不同的值。创建实例的时候 传入值即可。实例值和原始值是不同的:枚举成员的原始值对于所有实例都是相同的,而且 你是在定义枚举的时候设置原始值。
        
        
                var srrrr:String = ""
       // let failture = ServerResponse.Error("out of chese")
        switch success{
        case let .Result(sunrise, sunset):
            srrrr = "Sunrise is at \(sunrise) and sunset is at \(sunset) ."
        case let .Error(error):
             srrrr = "\(error)"
        }
        
        println(srrrr)
        
        class superclass : ExampleProtocol{
            var simpleDescription:String = "a very simple protocol"
            var anotherProperty: Int = 69105
            
            func adjust() {
                simpleDescription = "now %100 adjused"
            }
            
            
        }
        
        var a = superclass()
        let sss = a.simpleDescription

        a.adjust()
        println(sss)
        
        
        let aSanotherproperty = a.anotherProperty
        
        println(aSanotherproperty)
        
        struct simpleStruct:ExampleProtocol
        {
            var simpleDescription:String = "s ssssss"
            mutating func adjust() {
                simpleDescription += "(adjust)"
                
            }
        }
        
        
        
        var b = simpleStruct()
        b.adjust()
        let bsim = b.simpleDescription
        
        
        println(b.simpleDescription)
        
        //使用 protocol 来声明一个接口。
        
        
        
        println(7.simpleDescription)
        
        
        
        
        
        
        let prog :ExampleProtocol = a
        prog.simpleDescription
        
        
        println(a.simpleDescription)
        
        
//        //∆∆∆泛型
//        func repeat<Itemtype>(item:[Itemtype],times:Int) -> [Itemtype]{
//            var result = [Itemtype]()
//            for i in 0..<times {
//                result += item
//            }
//            
//            
//            return result
//            
//        }
//        
//        repeat("knock", 4)
//        
//        println()
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


