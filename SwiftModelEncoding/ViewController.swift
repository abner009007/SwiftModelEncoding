//
//  ViewController.swift
//  SwiftModelEncoding
//
//  Created by 乐天 on 2017/10/11.
//  Copyright © 2017年 乐天. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataModel = DataModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //初始化模拟数据
        onCreateData()
        
        
        
        dataModel.saveData()
        print("保存成功!")
        
        
        
        
        dataModel.loadData()
        print("读取成功!", dataModel.userList)
        
        

        
    }
    
    //创建模拟数据
    func onCreateData(){
        
        let user = UserInfo();
        user.name = "abner";
        
        
        dataModel.userList.append(user)
        dataModel.userList.append(user)
        dataModel.userList.append(user)
    }

    
    


}

