//
//  FavoriteCell.swift
//  AyYemekDashboardWithXib
//
//  Created by User on 18.03.25.
//

import UIKit

class FavoriteCell: UITableViewCell {

    @IBOutlet weak var headTitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var name1Label: UILabel!
    
    @IBOutlet weak var image1View: UIImageView!
    @IBOutlet weak var image2View: UIImageView!
    @IBOutlet weak var name2Label: UILabel!
    
    @IBOutlet weak var image3View: UIImageView!
    @IBOutlet weak var nameLabel3: UILabel!
    
    struct Item {
        var head:String
        var title1:String
        var title2:String
        var title3:String
        var image1:String
        var image2:String
        var image3:String
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configure(item:Item){
        headTitleLabel.text = item.head
        name1Label.text = item.title1
        name2Label.text = item.title2
        nameLabel3.text = item.title3
        
        image1View.image = UIImage(named: item.image1)
        image2View.image = UIImage(named: item.image2)
        image3View.image = UIImage(named: item.image3)


    }
    
    
    
    
    
    
}
