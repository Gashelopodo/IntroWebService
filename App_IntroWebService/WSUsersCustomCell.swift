//
//  WSUsersCustomCell.swift
//  App_IntroWebService
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WSUsersCustomCell: UITableViewCell {
    
    
    //MARK: - Outlet
    
    @IBOutlet weak var myIdLabel: UILabel!
    @IBOutlet weak var myNameLabel: UILabel!
    @IBOutlet weak var myUserNameLabel: UILabel!
    @IBOutlet weak var myEmailLabel: UILabel!
    @IBOutlet weak var myPhoneLabel: UILabel!
    @IBOutlet weak var myNameCompanyLabel: UILabel!
    @IBOutlet weak var myCatchCompanyLabel: UILabel!
    @IBOutlet weak var myBsCompanyLabel: UILabel!
    @IBOutlet weak var myUrlLabel: UILabel!
    @IBOutlet weak var myButtonWeb: UIButton!
    @IBOutlet weak var myButtonMap: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
