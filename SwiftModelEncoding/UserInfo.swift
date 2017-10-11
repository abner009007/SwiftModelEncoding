//
//  UserInfo.swift
//  SwiftModelEncoding
//
//  Created by 乐天 on 2017/10/11.
//  Copyright © 2017年 乐天. All rights reserved.
//

import UIKit

class UserInfo: NSObject , NSCoding {
    
    var name:String?
    
    
    override init() {
        super.init();
        
    }
    
    //反序列化
    required init?(coder aDeCoder: NSCoder){
        
        self.name = (aDeCoder.decodeObject(forKey: "name") as? String)!
    }
    
    //序列化
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
    }
    
    //导致两种方式的原因是 var name:String?和var name:String
    
//    //构造方法
//    required init(name:String="", phone:String="") {
//        self.name = name
//        self.phone = phone
//    }
//    
//    //从object解析回来
//    required init(coder decoder: NSCoder) {
//        self.name = decoder.decodeObject(forKey: "Name") as? String ?? ""
//        self.phone = decoder.decodeObject(forKey: "Phone") as? String ?? ""
//    }
//    
//    //编码成object
//    func encode(with coder: NSCoder) {
//        coder.encode(name, forKey:"Name")
//        coder.encode(phone, forKey:"Phone")
//    }
}
