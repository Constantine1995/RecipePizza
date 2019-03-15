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
        return label
    }()
    
    let timeForPrepare: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: detailCellId)
        view.addSubview(headerImageView)
        view.addSubview(titleHeader)
        setupConstraints()
    }
    
    func setupConstraints() {
        titleHeader.setAnchor(top: headerImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: view.bottomAnchor, paddingTop: 10, paddingLeft: 10, paddingRight: -10, paddingBottom: -10)
        
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = Bundle.main.loadNibNamed("HeaderCell", owner: self, options: nil)?.first as! HeaderCell
        headerCell.headerImageView.image = headerImageView.image
        headerCell.title.text = titleHeader.text
        headerCell.timeForPrepare.text = timeForPrepare.text
        return headerCell
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
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 400
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: detailCellId, for: indexPath)
        
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }
}
