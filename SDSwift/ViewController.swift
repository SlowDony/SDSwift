//
//  ViewController.swift
//  SDSwift
//
//  Created by slowdony on 2017/8/22.
//  Copyright © 2017年 slowdony. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    let dataArr = ["基本语法","数组","字符串","集合","字典"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "swift学习"
        setUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUI() {
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height

        
        let table = UITableView(frame: CGRect.init(x: 0, y: 0, width: width, height: height), style: UITableViewStyle.plain)
        table.delegate = self
        table.dataSource = self
        view.addSubview(table)
    }
    
    //tableview代理
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "id"
        let cell  = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: cellID)
        cell.textLabel?.text = dataArr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

}

