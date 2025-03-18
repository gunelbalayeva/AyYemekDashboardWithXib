//
//  BannerTableViewCell.swift
//  AyYemekDashboardWithXib
//
//  Created by User on 18.03.25.
//

import UIKit

class BannerTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var Addbutton: UIButton!
    
    @IBOutlet weak var rigthImage: UIImageView!
    
    struct Item {
        var title:String
        var image:String
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        Addbutton.layer.cornerRadius = 16
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configure(item:Item){
        titleLabel.text = item.title
        rigthImage.image = UIImage(named: item.image)
    }
}
