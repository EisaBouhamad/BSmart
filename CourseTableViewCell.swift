//
//  CourseTableViewCell.swift
//  BSmart
//
//  Created by Eisa Bouhamad on 9/29/15.
//  Copyright © 2015 B Company. All rights reserved.
//

import UIKit

class CourseTableViewCell: UITableViewCell {

    var courses:[Course] = [Course]()

    
    @IBOutlet weak var ColorCourseCell: UILabel!
    @IBOutlet weak var ImageCourseCell: UIImageView!
    @IBOutlet weak var textCourseCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setLabelText(text:String) {

        textCourseCell.text = text
        
        //textCourseCell.backgroundColor = UIColor.cyanColor()
        
    }
    
    func setLabelColor(String:UIColor) {
        
        //textCourseCell.backgroundColor = UIColor.blackColor()
        
        ColorCourseCell.backgroundColor = String
        
    }
    
}
