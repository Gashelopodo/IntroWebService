//
//  WSPostUserAdress.swift
//  App_IntroWebService
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WSPostUserAdress: NSObject {
    
    var street : String?
    var suite : String?
    var city : String?
    var zipcode : String?
    var geo : WSPostUserAdressGeo
    
    
    init(pStreet : String, pSuite : String, pCity : String, pZipcode : String, pGeo : WSPostUserAdressGeo) {
        self.street = pStreet
        self.suite = pSuite
        self.city = pCity
        self.zipcode = pZipcode
        self.geo = pGeo
        
        super.init()
        
    }

}
