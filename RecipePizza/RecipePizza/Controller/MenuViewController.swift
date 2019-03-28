//
//  MenuController.swift
//  RecipePizza
//
//  Created by mac on 3/26/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
class MenuViewController: UIViewController {
    
    var delegate: HomeControllerDelegate?
    
    var tableView: UITableView!
    
    let reueIdentifer = "MenuOptionCell"
    
    let headerImageView: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "backgroundHeaderMenu"))
        image.contentMode = .scaleToFill
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupTabeView()
        addSubView()
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
    }
    
    func addSubView() {
        view.addSubview(headerImageView)
        view.addSubview(tableView)
    }
    
    func setupConstraints() {
        headerImageView.setAnchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: nil, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: 0,width: view.frame.width, height: view.frame.height / 3)
        
        tableView.setAnchor(top: headerImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: view.bottomAnchor, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
    }
}
