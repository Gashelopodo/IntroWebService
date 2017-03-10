//
//  WSPostUser.swift
//  App_IntroWebService
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WSPostUser: NSObject {
    
    var id : Int?
    var name : String?
    var username : String?
    var address : WSPostUserAdress
    var phone : String?
    var website : String?
    var company : WSPostUserCompany
    var email : String?
    
    init(pId : Int, pName : String, pUsername : String, pAddress : WSPostUserAdress, pPhone : String, pWebsite : String, pCompany : WSPostUserCompany, pEmail : String){
        self.id = pId
        self.name = pName
        self.username = pUsername
        self.address = pAddress
        self.phone = pPhone
        self.website = pWebsite
        self.company = pCompany
        self.email = pEmail
        
        super.init()
    }

    

}

/*
class Address{
    
    var street : String?
    var suite : String?
    var city : String?
    var zipcode : String?
    var geo : Geo
    
    
    init(pStreet : String, pSuite : String, pCity : String, pZipcode : String, pGeo : Geo) {
        self.street = pStreet
        self.suite = pSuite
        self.city = pCity
        self.zipcode = pZipcode
        self.geo = pGeo
        
    }
    
    
    
}

class Geo{
    
    var lat : String
    var lng : String
    
    init(pLat : String, pLng : String){
        self.lat = pLat
        self.lng = pLng
        
       
    }
    
}

class Company{
    
    var name : String
    var catchPhrase : String
    var bs : String
    
    init(pName : String, pCatchPhrase : String, pBs : String){
        self.name = pName
        self.catchPhrase = pCatchPhrase
        self.bs = pBs
        
        
    }
    
    
}

*/







