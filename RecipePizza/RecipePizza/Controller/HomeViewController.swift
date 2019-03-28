//
//  ViewController.swift
//  RecipePizza
//
//  Created by mac on 3/6/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: = Properties
    var PopularPizzaCellId = "popularRecipePizzaCell"
    
    var recipeData: [PopularRecipePizza] = PopularRecipePizza.fetchRecipe()
    
    var delegate: HomeControllerDelegate?
    
    let headerImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "rect-header"))
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let headerPizzaImageView: UIView = {
        let imageView = UIImageView(image: UIImage(named: "pizza-header"))
        imageView.contentMode = .scaleAspectFill
        imageView.imageViewCorners()
        return imageView
    }()
    
    let titleHeader: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 25)
        label.text = "Рецепты пиццы"
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    let headerPopular: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 20)
        label.text = "Популярные"
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.textAlignment = .left
        return label
    }()
    
    let seeAllButton: UIButton = {
        let button = UIButton(type: .system)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        button.setTitle("Все 〉", for: .normal)
        button.tintColor = #colorLiteral(red: 1, green: 0.06543179506, blue: 0, alpha: 1)
        button.addTarget(self, action: #selector(seeAllPizza(_ :)), for: .touchUpInside)
        return button
    }()
    
    let tableView: UITableView = {
        let table = UITableView()
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupUINavigationController()
        addSubView()
        setupTableView()
        setupConstraints()
    }
    
    func setupView() {
        view.backgroundColor = .white
    }
    
    func setupUINavigationController() {
        navigationItem.titleView = titleHeader
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleManuToggle))
    }
    
    func addSubView() {
        view.addSubview(headerImageView)
        view.addSubview(headerPizzaImageView)
        view.addSubview(tableView)
        view.addSubview(headerPopular)
        view.addSubview(seeAllButton)
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(RecipePizzaTableViewCell.self, forCellReuseIdentifier: PopularPizzaCellId)
        tableView.separatorStyle = .none
    }
    
    func setupConstraints() {
        headerImageView.setAnchor(top: nil, left: nil, right: nil, bottom: nil, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: 0, width: view.frame.width, height: 150)
        
        headerPizzaImageView.setAnchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: nil, paddingTop: 30, paddingLeft: 30, paddingRight: -30, paddingBottom: 0, width: 100, height: 300)
        
        headerPopular.setAnchor(top: headerPizzaImageView.bottomAnchor, left: view.leftAnchor, right: seeAllButton.leftAnchor, bottom: nil, paddingTop: 20, paddingLeft: 30, paddingRight: -10, paddingBottom: 0, width: headerPopular.frame.width, height: 30)
        
        seeAllButton.setAnchor(top: headerPizzaImageView.bottomAnchor, left: headerPopular.rightAnchor, right: view.rightAnchor, bottom: nil, paddingTop: 20, paddingLeft: 0, paddingRight: -30, paddingBottom: 0, width: 65, height: 30)
        
        tableView.setAnchor(top: headerPopular.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: view.bottomAnchor, paddingTop: 10, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
    }
    
    @objc func handleManuToggle() {
        delegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    @objc func seeAllPizza(_ : UIButton) {
        let allPizzaViewController = AllPizzaViewController()
        navigationController?.customPushViewController(allPizzaViewController, animated: true)
    }
    
}
