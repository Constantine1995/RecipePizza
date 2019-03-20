//
//  DetailViewController.swift
//  RecipePizza
//
//  Created by mac on 3/16/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import BEMCheckBox

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let detailCellId = "detailCellId"
    
    var sectionData: [HeaderSectionsDetail] {
        return HeaderSectionsDetail.fetchSections()
    }
    
    var ingredientsArray = [String]()
    
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
    
    let favoriteButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "favorite").withRenderingMode(.alwaysOriginal), for: .normal)
        button.frame.size.width = 40
        button.frame.size.height = 60
        return button
    }()
    
    let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.contentSize.height = 2000
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.isScrollEnabled = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(IngredientsTableViewCell.self, forCellReuseIdentifier: detailCellId)
        
        view.addSubview(scrollView)
        scrollView.addSubview(headerImageView)
        scrollView.addSubview(titleHeader)
        scrollView.addSubview(timeForPrepare)
        scrollView.addSubview(favoriteButton)
        scrollView.addSubview(tableView)
        scrollView.addSubview(checkbox)
        
        setupScrollView()
    }
    
    func setupScrollView() {
        scrollView.setAnchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: view.bottomAnchor, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
        
        headerImageView.setAnchor(top: scrollView.topAnchor, left: nil, right: nil, bottom: nil, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: 0,width: view.frame.width, height: 300)
        
        titleHeader.setAnchor(top: headerImageView.bottomAnchor, left: headerImageView.leftAnchor, right: nil, bottom: nil, paddingTop: 10, paddingLeft: 10, paddingRight: 0, paddingBottom: 0)
        
        timeForPrepare.setAnchor(top: titleHeader.bottomAnchor, left: titleHeader.leftAnchor, right: nil, bottom: nil, paddingTop: 6, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
        
        favoriteButton.setAnchor(top: headerImageView.bottomAnchor, left: nil, right: headerImageView.rightAnchor, bottom: nil, paddingTop: 0, paddingLeft: 0, paddingRight: -25, paddingBottom: 0, width: 40, height: 60)
        
        tableView.setAnchor(top: timeForPrepare.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: view.bottomAnchor, paddingTop: 20, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return ingredientsArray.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerCell = Bundle.main.loadNibNamed("HeaderSections", owner: self, options: nil)?.first as! HeaderSections
        headerCell.title.text = sectionData[section].title
        headerCell.headerMiniText.text = "Количество: " + amountOfIngredientsText.text!
        return headerCell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: detailCellId, for: indexPath) as! IngredientsTableViewCell
        if indexPath.section == 0 {
            cell.checkMark = checkbox
            cell.content.text = ingredientsArray[indexPath.row]
        } else {
            cell.textLabel?.text = "здесь приготовление \(indexPath.row)"
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}
