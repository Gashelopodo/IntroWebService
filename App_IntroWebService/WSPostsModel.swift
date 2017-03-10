//
//  WSPostsModel.swift
//  App_IntroWebService
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WSPostsModel: NSObject {

    var userId : Int?
    var id : Int?
    var title : String?
    var body : String?
    
    init(pUserId : Int, pId : Int, pTitle : String, pBody : String){
        self.userId = pUserId
        self.id = pId
        self.title = pTitle
        self.body = pBody
        
        super.init()
    }
    
    
    
    
}
