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
        label.backgroundColor = #colorLiteral(red: 0.0430477038, green: 0.1253411174, blue: 0.1920496821, alpha: 1)
        label.textAlignment = .center
        return label
    }()
    
    let titleHeader: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 25)
        label.text = "Об авторе"
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
        setupView()
        addSubView()
        setupConstraints()
    }
    
    @objc func handleDissmiss() {
        dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        view.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "backgroundAboutMe"))
        avatarImage.image = informationDeveloper.IconImage
        nameLabel.text = informationDeveloper.nameLabel
    }
 
    func addSubView() {
        view.addSubview(avatarImage)
        view.addSubview(nameLabel)
    }
    
    func setupNavigation() {
        navigationItem.titleView = titleHeader
        navigationController?.navigationBar.barStyle = .black
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "back").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDissmiss))
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
