//
//  ViewController.swift
//  RecipePizza
//
//  Created by mac on 3/6/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var PopularPizzaCellId = "popularRecipePizzaCell"
    
    let headerImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "rect-header"))
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.contentMode = .scaleAspectFit
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
        setup()
    }
    
    func setup() {
        
        navigationController?.setupNavigationBarItems(navigationController!, navigationItem)
        //        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.0430477038, green: 0.1253411174, blue: 0.1920496821, alpha: 1)
        navigationItem.titleView = titleHeader
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(RecipePizzaTableViewCell.self, forCellReuseIdentifier: PopularPizzaCellId)
        tableView.separatorStyle = .none
        
        view.addSubview(headerImageView)
        view.addSubview(headerPizzaImageView)
        view.addSubview(tableView)
        view.addSubview(headerPopular)
        view.addSubview(seeAllButton)
        //view.addSubview(logoImageView)
        setupConstraints()
    }
    
    @objc func seeAllPizza(_ : UIButton) {
//        let allPizzaCollectionViewCell = storyboard?.instantiateViewController(withIdentifier: "AllPizza") as! MorePizzaCollectionViewController
        let AllPizzaViewController = storyboard?.instantiateViewController(withIdentifier: "AllPizza") as! AllPizzaViewController
        navigationController?.customPushViewController(AllPizzaViewController, animated: true)
        
        print("---")
    }
    
    func setupConstraints() {
        
        // headerImageView consntraint
        headerImageView.setAnchor(top: nil, left: nil, right: nil, bottom: nil, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: 0, width: view.frame.width, height: 150)
        
        // headerPizzaImageView consntraint
        headerPizzaImageView.setAnchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: nil, paddingTop: 100, paddingLeft: 30, paddingRight: -30, paddingBottom: 0, width: 100, height: 200)
        
        // logoImageView consntraint
        //        logoImageView.setAnchor(top: nil, left: headerPizzaImageView.leftAnchor, right: headerPizzaImageView.rightAnchor, bottom: headerPizzaImageView.bottomAnchor, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: -20)
        
        // headerPopular consntraint
        headerPopular.setAnchor(top: headerPizzaImageView.bottomAnchor, left: view.leftAnchor, right: seeAllButton.leftAnchor, bottom: nil, paddingTop: 20, paddingLeft: 30, paddingRight: -10, paddingBottom: 0, width: headerPopular.frame.width, height: 30)
        
        // seeAllButton consntraint
        seeAllButton.setAnchor(top: headerPizzaImageView.bottomAnchor, left: headerPopular.rightAnchor, right: view.rightAnchor, bottom: nil, paddingTop: 20, paddingLeft: 0, paddingRight: -30, paddingBottom: 0, width: 65, height: 30)
        
        // tableView consntraint
        tableView.setAnchor(top: headerPopular.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: view.bottomAnchor, paddingTop: 10, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
    }
}
