//
//  UnitTableViewCell.swift
//  BSmart
//
//  Created by Eisa Bouhamad on 10/19/15.
//  Copyright © 2015 B Company. All rights reserved.
//

import UIKit

class UnitTableViewCell: UITableViewCell {

    @IBOutlet weak var textUnitCell: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setLabalText(text:String) {
        
        textUnitCell.text = text
        
    }

    
}
