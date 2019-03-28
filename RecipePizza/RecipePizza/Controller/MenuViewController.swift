//
//  MenuController.swift
//  RecipePizza
//
//  Created by mac on 3/26/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
class MenuViewController: UIViewController {
    
    var tableView: UITableView!
    
    let reueIdentifer = "MenuOptionCell"
    
    let menuData: [MenuCell] = MenuCell.fetchMenu()
    
    let headerImageView: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "al-capone-popular"))
        image.contentMode = .scaleToFill
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupTabeView()
        setupConstraints()
    }
    
    func setupView() {
        view.backgroundColor = #colorLiteral(red: 0.0430477038, green: 0.1253411174, blue: 0.1920496821, alpha: 1)
    }

    func setupTabeView() {
        tableView = UITableView()
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MenuOptionTableViewCell.self, forCellReuseIdentifier: reueIdentifer)
        view.addSubview(tableView)
    }
    
    func setupConstraints() {
        tableView.setAnchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: view.bottomAnchor, paddingTop: 70, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
    }
}
