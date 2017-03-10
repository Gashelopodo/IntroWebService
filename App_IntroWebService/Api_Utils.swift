//
//  Api_Utils.swift
//  App_IntroWebService
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import Foundation

let CONSTANTES = Constantes()

struct Constantes {
    let BASE_URL = Base_Url();
}

struct Base_Url {
    let BASE_URL_POSTS = "http://jsonplaceholder.typicode.com/posts"
    let BASE_URL_USERS = "http://jsonplaceholder.typicode.com/users"
}

