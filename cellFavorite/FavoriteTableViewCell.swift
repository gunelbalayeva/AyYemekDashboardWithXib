//
//  FavoriteTableViewCell.swift
//  AyYemekDashboardWithXib
//
//  Created by User on 15.03.25.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var centerImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var items:[Item] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "FavoriteCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FavoriteCollectionViewCell")

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    struct Item {
        var image:Image
        var name:String
    }
    
    enum Image :String{
        case burger
        case pizza
        case steyk
        case yarimSteyk
    }
    func configure(item: Item){
        centerImageView.image = UIImage(named: item.image.rawValue)
        nameLabel.text = item.name
    }
    
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return items.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavoriteCollectionViewCell", for: indexPath) as! FavoriteCollectionViewCell

            let item = items[indexPath.item]
            cell.configure(item: item)
            return cell
        }
        
        // UICollectionView Delegate Flow Layout Method
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 100, height: 100) // Məsələn, elementin ölçüsü
        }
}
