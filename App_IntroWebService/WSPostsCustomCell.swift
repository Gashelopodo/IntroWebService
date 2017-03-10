//
//  WSPostsCustomCell.swift
//  App_IntroWebService
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WSPostsCustomCell: UITableViewCell {
    
    //MARK: - OUTLET
    
    @IBOutlet weak var myUserIdLabel: UILabel!
    @IBOutlet weak var myIdLabel: UILabel!
    @IBOutlet weak var myTittleLabel: UILabel!
    @IBOutlet weak var myBodyLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
