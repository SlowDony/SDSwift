//
//  SDClosureViewController.swift
//  SDSwift
//
//  Created by slowdony on 2017/9/7.
//  Copyright © 2017年 slowdony. All rights reserved.
//

//闭包
/**
 在oc中block是匿名的函数
 在swift中函数时特殊的闭包
 
 闭包
 1.提前准备好的代码
 2.在需要的时候执行
 3.可以当做参数传递
 闭包的应用场景
 .异步执行完成回调
 .控制器间的回调
 .自定义试图回调
 
回调特点
 以参数回调处理结果
 返回值为void
 
 
 */

import UIKit

class SDClosureViewController: SDBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "闭包"
        
        
        /*
         //简单的block
         void(^b1)() = ^{
         NSLog(@"hello");
         }
         */
        //1.简单的闭包
        //() -> () 没有参数,没有返回值的函数
        //如果没有参数,没有返回值,可以省略,连 in 都一起省略
        //option + click 查看参数类型
        let b1  = {
            print("hello")
        }
        
        b1()
        //2.带参数的闭包
        //闭包中,参数,返回值,实现代码都是写在{}中
        //需要使用一个关键字 "in" 分隔定义和实现
        //{形参列表 -> 返回值类型 in //实现代码}
        //(Int) -> ()
        let b2 = {(x: Int) -> () in
            print(x)
        }
        b2(100)
        
        //3带参数和返回值的闭包
        let b3 = {(x: Int) -> Int in
            return x + 100
        }
    
        print("b3:\(b3(3))")
//        demo1()
//       demo2 { (result) in
//        print("获取的结果:\(result)")
//        }
        //'尾'随闭包
        //如果函数的最后一个参数是闭包,函数参数可以提前结束,最后一个参数直接使用{}包装闭包的代码
        //demo2(completion: <#T##([String]) -> ()#>)
        
        demo2() { (result) in
            print("result:\(result)")
        }
        
        //按照函数本身编写的结果
        demo2(completion: {(result) -> () in
            print("result1:\(result)")
        })
        
    }
    
    /**
     在异步执行任务,获取结果,通过block/闭包回调
     swift 中闭包的应用场景和block完全一致
     */
    //GCD的应用
    func demo2(completion: @escaping (_ result:[String]) ->()) ->()  {
        //将任务添加到队列,指定执行任务的函数
        //翻译:"队列" 调度任务(block/闭包) 以同步/异步 的方法执行
        //async 异步
        DispatchQueue.global().async { //
            print("耗时操作\(Thread.current)")
            
            
            //休眠
            Thread.sleep(forTimeInterval: 1.0)
            //获得结果
            let arr = ["今天","明天","后天"]
//            let str = "哈哈"
            
            //主队列回调
            DispatchQueue.main.async(execute: {
                print("主线程更新\(Thread.current)")
                //回调->执行闭包(通过参数传递)
                //传递异步获取的结果
                completion(arr)
            })
            
        }
        
    }

    
    
    //GCD的应用
    func demo1()  {
        //将任务添加到队列,指定执行任务的函数
        //翻译:"队列" 调度任务(block/闭包) 以同步/异步 的方法执行
        //async 异步
        DispatchQueue.global().async { //
            print("耗时操作\(Thread.current)")
            
            
            //主队列回调
            DispatchQueue.main.async(execute: { 
                print("主线程更新\(Thread.current)")
            })
        
        }
        
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
