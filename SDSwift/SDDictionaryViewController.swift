//
//  SDDictionaryViewController.swift
//  SDSwift
//
//  Created by slowdony on 2017/8/23.
//  Copyright © 2017年 slowdony. All rights reserved.
//

import UIKit

class SDDictionaryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "字典的练习"
        view.backgroundColor = UIColor.white
        demo3()
        // Do any additional setup after loading the view.
    }

    
    //MARK: -字典的合并
    func demo3() {
        var dic = ["title":"小明","age":"18"]
        var dic1 = ["title":"小郑","name":"21"]
        
//        dic += dic1 //不能像数组一样合并
        /*
         遍历dic1 ,依次设置
         如果有相同的key ,修改key对应的value
         如果没有就添加
         */
        for e in dic1 {
            dic1[e.key] = dic[e.key]
            print(dic1)
        }
    }
    
    //MARK: - 字典的遍历
    
    func demo2()  {
        let dic = ["title":"小明","age":"18"]
        
        //元祖 key:string value:NSObject
        
        for e in dic {
            print ("ekey:\(e.key) evalue:\(e.value)")
        }
        
        /*
        前者为key.后者为value
         */
        
        for (key,value) in dic{
            print ("\(key) \(value)")
        }
        
    }
    //MARK: - 字典的增删改
    func demo1()  {
        //var可变    let不可变
        var dic = ["title":"小明","age":"18"]
        print(dic)
        
        //新增字典
        dic["name"] = "张晓明"
        print (dic)
        
        //修改字典
        dic["title"] = "小张"
        print (dic)
        
        //删除字典
        dic .removeValue(forKey: "age")
        print (dic)
        
    
    }
    
    //MARK: - 字典的定义
    func demo() {
        let dic = ["title":"小明","age":"18"]
        print(dic)
        //定义字典的数组
        let arr = [
            ["name":"小红","age":"18"],
            ["name":"小名","age":"32"],
            ["name":"小刚","age":"18"],
            ["name":"小歪","age":"10"]
        ]
        print(arr)
        
        /*所有对象转成json(数组或字典)必须遵守以下原则
        1.定义节点是数组或字典
         2.所有对象必须是NSString ,NSNumber ,NSNull
         3.所有key必须是NSString
         4.NSNumber 不能为nil或无穷大
         
         */
        
        
    
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
