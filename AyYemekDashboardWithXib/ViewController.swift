//
//  ViewController.swift
//  AyYemekDashboardWithXib
//
//  Created by User on 12.03.25.
//

import UIKit

 enum Models {
    case header(HeaderViewCell.Item)
    case banner(BannerTableViewCell.Item)
    case favorite(FavoriteCell.Item)
     case categories(CategoryTableViewCell.Item)
     
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    @IBOutlet weak var tableView: UITableView!
    
    
    private var cellModel :[Models] = [
        .header(.init(title: "Xoş gəldin, Vilayət! 👋🏼", subtitle: "Nizami küç, 201B", image: "bell-02")),
        .banner(.init(title: "40%-dək endirimdən faydalanmağa tələs", image: "Motor 1")),
      
            .favorite(.init(
                head:"Sevilən yeməklərimiz",
                title1: "Burger",
                title2: "Pizza",
                title3: "Steyk",
                image1: "burger",
                image2: "pizza",
                image3: "steyk")),
        .categories(.init(categoryName: "Kateqoriyalar",
                          image1: "image1",
                          image2: "image2",
                          image3: "image3",
                          image4: "image4",
                          title1: "Econom",
                          title2: "Premium",
                          title3: "Gold",
                          title4: "Elite",
                          subtitle1: "Title here",
                          subtitle2: "Title here",
                          subtitle3: "Title here",
                          subtitle4: "Title here"))
        
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(HeaderViewCell.nib, forCellReuseIdentifier: HeaderViewCell.identifier)
        tableView.register(BannerTableViewCell.nib, forCellReuseIdentifier: BannerTableViewCell.identifier)
        tableView.register(FavoriteCell.nib, forCellReuseIdentifier: FavoriteCell.identifier)
       tableView.register(CategoryTableViewCell.nib, forCellReuseIdentifier: CategoryTableViewCell.identifier)

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = cellModel[indexPath.row]
        switch cellType {
        case .header(let model) :
            guard let cell = tableView.dequeueReusableCell(withIdentifier: HeaderViewCell.identifier, for: indexPath)
                    as? HeaderViewCell  else {
                
                return UITableViewCell()
            }
            cell.configure(item: model)
            return cell
        case .banner(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: BannerTableViewCell.identifier, for: indexPath)
                    as? BannerTableViewCell  else {
                
                return UITableViewCell()
            }
            cell.configure(item: model)
            return cell
            
        case .favorite(let model):
                guard let cell = tableView.dequeueReusableCell(withIdentifier: FavoriteCell.identifier, for: indexPath) as? FavoriteCell else {
                    return UITableViewCell()
                }
                
            cell.configure(item: model)
                return cell
            
        case .categories(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.identifier, for: indexPath) as? CategoryTableViewCell else {
                return UITableViewCell()
            }
            
        cell.configure(item: model)
            return cell
            }
    }
}

