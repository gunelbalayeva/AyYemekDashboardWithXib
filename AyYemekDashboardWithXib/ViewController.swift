//
//  ViewController.swift
//  AyYemekDashboardWithXib
//
//  Created by User on 12.03.25.
//

import UIKit

 enum Models {
    case header(HeaderViewCell.Item)
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    @IBOutlet weak var tableView: UITableView!
    private var cellModel :[Models] = [
        .header(.init(title: "Xoş gəldin, Vilayət! 👋🏼", subtitle: "Nizami küç, 201B", image: "bell-02"))
    
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(HeaderViewCell.nib, forCellReuseIdentifier: HeaderViewCell.identifier)
//        tableView.register(BannerCell.nib, forCellReuseIdentifier: BannerCell.identifier)
//        tableView.register(FavoriteCell.nib, forCellReuseIdentifier: FavoriteCell.identifier)
//        tableView.register(CategoryCell.nib, forCellReuseIdentifier: CategoryCell.identifier)

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = cellModel[indexPath.row]
        switch cellType {
        case .header(var model) :
            guard let cell = tableView.dequeueReusableCell(withIdentifier: HeaderViewCell.identifier, for: indexPath)
            as? HeaderViewCell  else {
        
               return UITableViewCell()
            }
            cell.configure(item: model)
            return cell
        }
      
    }

}

