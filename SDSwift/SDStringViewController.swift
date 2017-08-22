//
//  SDStringViewController.swift
//  SDSwift
//
//  Created by slowdony on 2017/8/22.
//  Copyright © 2017年 slowdony. All rights reserved.
//

import UIKit

class SDStringViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        navigationItem.title = "字符串的练习"
        demo()
        // Do any additional setup after loading the view.
    }

    /*
     字符串
     .字符串长度
     .字符串拼接
     .字符串的格式化
     .字符串的子串
     
     知道 as 的作用 - 类似于oc中的类型转换
     
     在siwft中绝大多数情况下推荐使用string 类型
     
     string 是一个结构体,性能更高
     .string 目前有了绝大多数NSString的功能
     .string 可以直接遍历
     .NSStirng 是一个OC 的对象,性能略差
     
     
     */
    func demo(){
        // MARK: - 1便利字符串 characters
        let str = "我是个字符串"
        for i in str.characters {
            print(i)
        }
        
        // MARK: - 2字符串长度
        //1> 返回制定编码的对应的字节数量
        //UTF8的编码(0 - 4)汉子一个占3字节
        print(str.lengthOfBytes(using: .utf8)) // 打印结果18
        
        //2>字符串长度(返回字符的个数) (推荐使用)
        print(str.characters.count) //打印结果 6
        
        //3>中转成oc的NSString
        /*
         str as NSString
         oc 写法 (NSString *)str
         Swift 写法 str as NSString  利用"as" 类型转换
         */
        let ocStr = str as NSString
        print (ocStr.length)  //打印值为 6
        
        // MARK: - 3字符串拼接
        /*
         oc [NSString stringWithFormat:...]
         swift "\(变量或者常量) \(...)"
         
         
         */
        let name = "slowdony:  "
        
        let str1 = "\(name)\(str)"
        
        print(str1) //打印结果:slowdony我是个字符串
        let title : String? = "标题"
        
        /*需要注意 拼接字符串需要注意可选项 optional */
        let str2 = "\(name)\(String(describing: title))"
        print(str2)//打印结果: slowdony:  Optional("标题")
        let str3 = "\(name)\(title ?? "")"
        print(str3) //打印结果:slowdony:  标题
        
        //oc 需要NSStringFromCGPoint(point)
        let point = CGPoint(x: 10, y: 10)
        print (point) // 打印结果:(10.0, 10.0)
        
        // MARK: - 4字符串格式化
        let h = 8
        let m = 9
        let s = 2
        
        let dataStr = "\(h):\(m):\(s)"
        print(dataStr) //打印结果:8:9:2
        
        //使用格式化字符串格式化
        let dataStr2 = String(format: "%02d:%02d:%02d", h,m,s)
        print (dataStr2)//打印结果:08:09:02
        
        
        // MARK: - 5字符串的子串
        //目前建议用oc的NSString
        
        //1> NSStrig
        let ocStr1 = str as NSString
        let subStr1 = ocStr1.substring(with: NSMakeRange(0, 2))
        print (subStr1)
        //2>string的3.0方法
        //        index
        //startIndex position ==0
        print(str.startIndex)
        //endIndex position ==str.length
        print(str.endIndex)
        
        let s2 = str.substring(from: "haha".endIndex) //相当于NSMakeRange(4, 2)
        print(s2)  //打印结果:符串
        
        //取子串的范围
        guard let range = str.range(of: "我是哦哦") else {
            print("没有找到字符串")
            return
        }
        
        //一定找到的范围
        print("-------华丽的分割线--------")
        print(range)
        print(str.substring(with: range))
        
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
