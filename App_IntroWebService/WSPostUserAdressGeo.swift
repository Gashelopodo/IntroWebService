//
//  WSPostUserAdressGeo.swift
//  App_IntroWebService
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WSPostUserAdressGeo: NSObject {
    
    var lat : String
    var lng : String
    
    init(pLat : String, pLng : String){
        self.lat = pLat
        self.lng = pLng
        
        super.init()
    }

}
