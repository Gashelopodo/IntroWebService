//
//  WSPostUserCompany.swift
//  App_IntroWebService
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WSPostUserCompany: NSObject {
    
    var name : String
    var catchPhrase : String
    var bs : String
    
    init(pName : String, pCatchPhrase : String, pBs : String){
        self.name = pName
        self.catchPhrase = pCatchPhrase
        self.bs = pBs
        
        super.init()
    }
    
}
