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
        demo()
        // Do any additional setup after loading the view.
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
