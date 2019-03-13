//
//  DetailTableViewController.swift
//  RecipePizza
//
//  Created by mac on 3/11/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    
    let detailCellId = "detailCellId"
    
    let headerImageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    let titleHeader: UILabel = {
            let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 30)
        label.textColor = .darkGray
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: detailCellId)
        let frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 270)
        
        headerImageView.frame = frame
        view.addSubview(headerImageView)
        view.addSubview(titleHeader)
        setupConstraints()

        tableView.tableHeaderView = headerImageView
    }

    func setupConstraints() {
        titleHeader.setAnchor(top: headerImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: view.bottomAnchor, paddingTop: 10, paddingLeft: 10, paddingRight: -10, paddingBottom: -10)

    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
        //        if section == 0 {
        //            return 1
        //        } else if section == 1 {
        //            return 5
        //        }
        //        else {
        //        return 2
        //        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: detailCellId, for: indexPath)
        
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }
}
