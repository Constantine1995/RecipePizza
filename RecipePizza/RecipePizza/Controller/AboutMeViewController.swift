//
//  AboutMeViewController.swift
//  RecipePizza
//
//  Created by mac on 3/28/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    let informationDeveloper: AboutMe = AboutMe.fetchAboutMeInformation()
    
    let avatarImage = UIImageView()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = .white
        label.backgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        addSubView()
        setupConstraints()
    }
    
    func setupView() {
        view.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "pizzaBackground"))
        avatarImage.image = informationDeveloper.IconImage
        nameLabel.text = informationDeveloper.nameLabel
    }
    
    func addSubView() {
        view.addSubview(avatarImage)
        view.addSubview(nameLabel)
    }

    func setupConstraints() {
        avatarImage.translatesAutoresizingMaskIntoConstraints = false
        avatarImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        avatarImage.heightAnchor.constraint(equalToConstant: 250).isActive = true
        avatarImage.widthAnchor.constraint(equalToConstant: 250).isActive = true
        avatarImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        nameLabel.setAnchor(top: avatarImage.bottomAnchor, left: nil, right: nil, bottom: nil, paddingTop: 10, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
        nameLabel.centerXAnchor.constraint(equalTo: avatarImage.centerXAnchor).isActive = true
    }
}
