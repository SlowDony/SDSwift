//
//  SDFunctionViewController.swift
//  SDSwift
//
//  Created by slowdony on 2017/8/27.
//  Copyright © 2017年 slowdony. All rights reserved.
//

import UIKit

class SDFunctionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "函数练习"
        view.backgroundColor = UIColor.white
        print(sum(x: 1, y: 3))
        print(sum1(num1: 1, num2: 4))
        print(sum2(2, 4))
        
        print("sum3:\(sum3(y : 10))")
        
        demo()
        demo1()
        demo2()
        // Do any additional setup after loading the view.
    }
    //MARK: - 无返回值得函数
    /*
        //主要用在闭包
     有一下三种表现形式  
        - 直接省略
        - ()
        - Void
     */
    
    func demo() {
        print("直接省略")
    }
    func demo1() -> () {
        print("()")
    }
    func demo2() -> Void {
        print("void")
    }
    
    
    
    
    
    //MARK: - 通过给参数设置默认值,在调用的时候,可以任意组合参数,而不是指定的,就使用默认值
    /*OC 中需要定义很多的方法.以及方法实现,最终调用包含所有参数的那个参数**/
    func sum3(x : Int = 1 , y : Int = 2) -> Int {
        return x + y;
    }
    
    //MARK: - 函数设置外部参数
    func sum1(num1 x:Int, num2 y:Int) -> Int {
        return(x + y)
    }
   
    /*
        外部参数就是在形参前加一个名字
        外部参数不会影响函数内部的细节
        外部参数会让外部调用方看起来更直观
        外部参数设置_,使用函数时可以省略参数名字
     */
    
    //swift中 _ 就是可以忽略任意不感兴趣的内容
    func sum2(_ x:Int,_ y:Int) -> Int {
        return(x + y)
    }
    
    
    
    //MARK: - 函数的定义
    //函数的定义 格式 ,函数名(形参列表) ->返回值类型
    
    /*
     swift1.0 sum(10,50) 所有的形参都会省略
     swift2.0 sum(10, y:50) 第一个形参的名称省略
     swift3.0 sum(x:10 ,y:40) 所有形参不都不省略
     */
    func sum(x: Int,y: Int) -> Int {
        return(x + y)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
