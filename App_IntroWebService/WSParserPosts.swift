//
//  WSParserPosts.swift
//  App_IntroWebService
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit
import SwiftyJSON

class WSParserPosts: NSObject {
    
    func getPostParse(_ dataFromNetwork : NSData) -> [WSPostsModel] {
        var arrayPosts = [WSPostsModel]()
        let legibleJSON = JSON(data: dataFromNetwork as Data, options: JSONSerialization.ReadingOptions.mutableContainers, error: nil)
        print(legibleJSON)
        for item in 0..<legibleJSON.count-1{
            let postModel = WSPostsModel(pUserId: legibleJSON[item]["userId"].int!,
                                         pId: legibleJSON[item]["id"].int!,
                                         pTitle: legibleJSON[item]["title"].string!,
                                         pBody: legibleJSON[item]["body"].string!)
            arrayPosts.append(postModel)
        }
        
        return arrayPosts
        
    }
    
    

}
