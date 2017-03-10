//
//  ApiManagerWS.swift
//  App_IntroWebService
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class ApiManagerWS: NSObject {
    
    //MARK: - Variables locales
    var posts = WSParserPosts()
    var users = WSParserUser()
    
    //MARK: - Singleton
    static let shared = ApiManagerWS()
    
    //MARK: - Funciones
    func getPosts() -> [WSPostsModel]{
        let customUrl = URL(string: CONSTANTES.BASE_URL.BASE_URL_POSTS)
        let jsonData = NSData(contentsOf: customUrl!)
        let arrayPostsModel = posts.getPostParse(jsonData!)
        
        return arrayPostsModel
        
    }
    
    func getUsers() -> [WSPostUser]{
        let customUrl = URL(string: CONSTANTES.BASE_URL.BASE_URL_USERS)
        let jsonData = NSData(contentsOf: customUrl!)
        let arrayUsersModel = users.getUserParse(jsonData!)
        
        return arrayUsersModel
        
    }

}
