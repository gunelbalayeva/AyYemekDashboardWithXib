//
//  CategoryTableViewCell.swift
//  AyYemekDashboardWithXib
//
//  Created by User on 18.03.25.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    // category name
    @IBOutlet weak var categoryItemLabel: UILabel!
    // 1
    @IBOutlet weak var image1View: UIImageView!
    @IBOutlet weak var title1Label: UILabel!
    @IBOutlet weak var subTitle1Label: UILabel!
    //2
    @IBOutlet weak var image2View: UIImageView!
    @IBOutlet weak var title2Label: UILabel!
    @IBOutlet weak var subTitle2Label: UILabel!
     // 3
    @IBOutlet weak var image3View: UIImageView!
    @IBOutlet weak var title3Label: UILabel!
    @IBOutlet weak var subTitle3Label: UILabel!
    // 4
    @IBOutlet weak var image4View: UIImageView!
    @IBOutlet weak var title4Label: UILabel!
    @IBOutlet weak var subTitle4Label: UILabel!
    
    
    struct Item {
        var categoryName:String
        // images
        var image1:String
        var image2:String
        var image3:String
        var image4:String
        // titles
        var title1:String
        var title2:String
        var title3:String
        var title4:String
        // subtitles
        var subtitle1:String
        var subtitle2:String
        var subtitle3:String
        var subtitle4:String
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
        categoryItemLabel.text = item.categoryName
        
        image1View.image = UIImage(named: item.image1)
        image2View.image = UIImage(named: item.image2)
        image3View.image = UIImage(named: item.image3)
        image4View.image = UIImage(named: item.image4)
 
        title1Label.text = item.title1
        title2Label.text = item.title2
        title3Label.text = item.title3
        title4Label.text = item.title4

        subTitle1Label.text = item.subtitle1
        subTitle2Label.text = item.subtitle2
        subTitle2Label.text = item.subtitle3
        subTitle3Label.text = item.subtitle4

        
        
    }
    
    
    
    
    
    
    
    
    
    
    
}
