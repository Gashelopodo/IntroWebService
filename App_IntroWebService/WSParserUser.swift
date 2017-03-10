//
//  WSParserUser.swift
//  App_IntroWebService
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit
import SwiftyJSON

class WSParserUser: NSObject {
    
    func getUserParse(_ dataFromNetwork : NSData) -> [WSPostUser] {
        var arrayUsers = [WSPostUser]()
        let legibleJSON = JSON(data: dataFromNetwork as Data, options: JSONSerialization.ReadingOptions.mutableContainers, error: nil)
        
        for item in 0..<legibleJSON.count-1{
            
            let geoModel = WSPostUserAdressGeo(pLat: legibleJSON[item]["address"]["geo"]["lat"].string!,
                                               pLng: legibleJSON[item]["address"]["geo"]["lat"].string!)
            
            let addressModel = WSPostUserAdress(pStreet: legibleJSON[item]["address"]["street"].string!,
                                                pSuite: legibleJSON[item]["address"]["suite"].string!,
                                                pCity: legibleJSON[item]["address"]["city"].string!,
                                                pZipcode: legibleJSON[item]["address"]["zipcode"].string!,
                                                pGeo: geoModel)
            
            let companyModel = WSPostUserCompany(pName: legibleJSON[item]["company"]["name"].string!,
                                                 pCatchPhrase: legibleJSON[item]["company"]["catchPhrase"].string!,
                                                 pBs: legibleJSON[item]["company"]["bs"].string!)
            
            let userModel = WSPostUser(pId: legibleJSON[item]["id"].int!,
                                       pName: legibleJSON[item]["name"].string!,
                                       pUsername: legibleJSON[item]["username"].string!,
                                       pAddress: addressModel,
                                       pPhone: legibleJSON[item]["phone"].string!,
                                       pWebsite: legibleJSON[item]["website"].string!,
                                       pCompany: companyModel,
                                       pEmail: legibleJSON[item]["email"].string!)
            
            arrayUsers.append(userModel)
        }
        
        return arrayUsers
        
    }


}
