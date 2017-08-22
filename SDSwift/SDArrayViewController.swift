//
//  SDArrayViewController.swift
//  SDSwift
//
//  Created by slowdony on 2017/8/22.
//  Copyright © 2017年 slowdony. All rights reserved.
//

import UIKit

class SDArrayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        navigationItem.title = "数组练习"
       
        demo4()
        // Do any additional setup after loading the view.
    }

    //MARK: - 数组的合并
    func demo4() {
         var arr = ["小明","小张","小红"]
         let arr1 = ["小卫","3","小普"]
        
        //合并时需要主要两个数组必须类型一致
         arr += arr1
        print(arr)
    }
    
    //MARK: - 数组的容量
    func demo3()  {
        //定义一个数组并指定类型为int型且没有初始化
//        var arr : [Int]
//        //给数组初始化
//        arr = [Int]()
        
        //以上两句可以合并成一句话
        var arr = [Int]()
        
        for i in 0..<8 {
            arr.append(i)
            
            print("arr:\(arr) 数组容量:\(arr.capacity)")
            /*
             arr:[0] 数组容量:2
             arr:[0, 1] 数组容量:2
             arr:[0, 1, 2] 数组容量:4
             arr:[0, 1, 2, 3] 数组容量:4
             arr:[0, 1, 2, 3, 4] 数组容量:8
             arr:[0, 1, 2, 3, 4, 5] 数组容量:8
             arr:[0, 1, 2, 3, 4, 5, 6] 数组容量:8
             arr:[0, 1, 2, 3, 4, 5, 6, 7] 数组容量:8
             数组容量是根据数组元素个数自动扩容*2
             */
        }
        
        arr.append(1)
        print(arr)
        
    }
    
    
    //MARK: - 数组的增删改
    func demo2()  {
        var arr = ["小明","小张","小红"]
        //追加元素
        arr.append("小刘");
        print (arr)
        
        //修改元素
        arr[2] = "😆"
        print(arr)
        
        //如果指定下标大于数组个数会产生数组越界
//        arr[4] = "哈哈"
//        print(arr) //Index out of range
        
        
        //删除元素
        //指定下标元素
        arr .remove(at: 2)
        print(arr)
        
        //删除全部,并且保留元素个数
        arr .removeAll(keepingCapacity: true)
        print("\(arr) 数组个数\(arr.capacity)")
        
        
    }
    
    //MARK: - 数组的便利
    func demo1()  {
        //1.按照下标便利
        let arr = ["小明","小刚","小红"]
        
        for i in 0..<arr.count {
            print(arr[i])
        }
        
        //2.按照元素便利
        for str in arr {
            print(str)
        }
        
        //3.enum block 同时便利下标和内容
        for e in arr.enumerated() {
            print("\(e.offset) \(e.element)")
        }
        
        //4.便利下标和内容
        
        for (n,s) in arr.enumerated()
        {
            //n下标
            //s [string] n下标对应的string
            print("\(n) \(s)")
        }
        
        
        
        //5反续便利
        for s in arr.reversed() {
            print(s)
        }
        
        //6反续索引和内容
        //正确反序
        for (n,s) in arr.enumerated().reversed()
        {
            print("\(n)   \(s)")
        }
        
        //错误的反序 (索引值和内容不一致)
        for (n,s) in arr.reversed().enumerated()
        {
            print("\(n)   \(s)")
        }
        
    }
    
    
    //MARK: - 数组的定义
    func demo() {
        //MARK - arr不用oc中的"@"
        //字符串
        let arr = ["haha","ooo","wwww"]
        print(arr) //打印结果:["haha", "ooo", "wwww"]
        
        //int
        let arr1 = [1,2,3,4]
        print(arr1)  //打印结果:[1, 2, 3, 4]
        
        //结构体
        let p = CGPoint(x: 2, y: 10)
        let arr2 = [p]
        print(arr2) //打印结果:[(2.0, 10.0)]
        
        //混合数组
        //  当数组类型不一致时,会自动推算为 Any类型
        let arr3 = ["java",2,p] as [Any]
        print(arr3)
        
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
