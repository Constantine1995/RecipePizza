//
//  DetailViewController.swift
//  RecipePizza
//
//  Created by mac on 3/16/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import BEMCheckBox

class DetailViewController: UIViewController {
    
    let detailCellId = "detailCellId"
    
    var sectionData: [HeaderSectionsDetail] = HeaderSectionsDetail.fetchSections()
    
    var ingredientsArray = [String]()
    var cooking = [String]()
    
    var headerImageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    var amountOfIngredientsText: UILabel = {
        let label = UILabel()
        return label
    }()
    var titleHeader: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Verdana", size: 30)
        return label
    }()
    
    var timeForPrepare: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica Neue", size: 17)
        label.textColor = .lightGray
        return label
    }()
    
    let tableView: UITableView = {
        let table = UITableView()
        return table
    }()
    
    var checkbox: BEMCheckBox = {
        let checkbox = BEMCheckBox()
        
        return checkbox
    }()
    
    let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.contentSize.height = 1900
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        addSubView()
        setupTableView()
        setupConstraints()
    }
    func setupView() {
        view.backgroundColor = .white
    }

    func addSubView() {
        view.addSubview(scrollView)
        scrollView.addSubview(headerImageView)
        scrollView.addSubview(titleHeader)
        scrollView.addSubview(timeForPrepare)
        scrollView.addSubview(tableView)
        scrollView.addSubview(checkbox)
    }
    
    func setupTableView() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 60
        tableView.reloadData()
        tableView.isScrollEnabled = false
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(IngredientsTableViewCell.self, forCellReuseIdentifier: detailCellId)
    }
    
    func setupConstraints() {
        scrollView.setAnchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: view.bottomAnchor, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
        
        headerImageView.setAnchor(top: scrollView.topAnchor, left: nil, right: nil, bottom: nil, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: 0,width: view.frame.width, height: 300)
        
        titleHeader.setAnchor(top: headerImageView.bottomAnchor, left: headerImageView.leftAnchor, right: nil, bottom: nil, paddingTop: 10, paddingLeft: 10, paddingRight: 0, paddingBottom: 0)
        
        timeForPrepare.setAnchor(top: titleHeader.bottomAnchor, left: titleHeader.leftAnchor, right: nil, bottom: nil, paddingTop: 6, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
        
        tableView.setAnchor(top: timeForPrepare.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: view.bottomAnchor, paddingTop: 20, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
    }
}
