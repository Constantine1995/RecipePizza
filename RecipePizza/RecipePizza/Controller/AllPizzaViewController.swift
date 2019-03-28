//
//  viewcoViewController.swift
//  RecipePizza
//
//  Created by mac on 3/24/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class AllPizzaViewController: UIViewController {
    
    let cellAllPizza = "cellAllPizza"
    
    let allPizzaData: [AllPizza] = AllPizza.fetchAllPizza()
    let recipeData: [PopularRecipePizza] = PopularRecipePizza.fetchRecipe()
    
    let headerImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "rect-header"))
        imageView.contentMode = .scaleAspectFill
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
    
    let collectionPizza: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 20
        collection.backgroundColor = .none
        collection.isScrollEnabled = true
        return collection
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupUINavigationController()
        addSubView()
        setupCollectionView()
        setupConstraints()
    }
    
    func setupView() {
        view.backgroundColor = #colorLiteral(red: 0.9411273003, green: 0.9412106872, blue: 0.9410575032, alpha: 1)
    }
    
    func setupUINavigationController() {
        navigationItem.titleView = titleHeader
    }
    
    func addSubView() {
        view.addSubview(headerImageView)
        view.addSubview(collectionPizza)
    }
    
    func setupCollectionView() {
        collectionPizza.dataSource = self
        collectionPizza.delegate = self
        collectionPizza.register(AllPizzaCollectionViewCell.self, forCellWithReuseIdentifier: cellAllPizza)
    }
    
    func setupConstraints() {
        headerImageView.setAnchor(top: nil, left: nil, right: nil, bottom: nil, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: 0, width: view.frame.width, height: 100)

        collectionPizza.setAnchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: nil, paddingTop: 70, paddingLeft: 10, paddingRight: -10, paddingBottom: 0, width: view.frame.width, height: view.frame.height - 100)
        
    }
}
