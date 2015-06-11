//
//  ViewController.swift
//  Swift_基本运算符
//
//  Created by mc on 15/6/11.
//  Copyright (c) 2015年 mc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //基本运算符
        //一目运算符     -a  !b  i++  --i
        //二目运算符     a + b
        //三目运算符     a ? b : c
        
        
        //赋值运算符
        let b = 10
        var a = 5
        var c:Bool = true
        a = b
        println(a)
        
        let (x,y)=(1,2)
        println(x,y)
        
//        
//        if let x = c {
//            println("huuuuuu")
//            //
//        }//错误  x= c不反悔任何值  c必须为optional
        
        //i++ 和 ++i
        var a1 = 0
        let b1 = a1++
        let b2 = ++a1
        println("i++和++i",b1,b2)
        
        //取负数
        let a2 = 3
        let b3 = -a2
        let b4 = -b3
        
        println(b3,b4)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

