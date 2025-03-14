//
//  TableViewCell.swift
//  AyYemekDashboardWithXib
//
//  Created by User on 14.03.25.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var imageRigth: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    struct Item {
        var title:String
        var subtitle: String
        var image:String
    }
    
    func configure(item: Item){
        titleLabel.text = item.title
        subtitleLabel.text = item.subtitle
        imageRigth.image = UIImage(named: item.image)
    }
}
