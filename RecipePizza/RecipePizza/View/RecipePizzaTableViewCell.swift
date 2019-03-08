//
//  RecipePizzaTableViewCell.swift
//  RecipePizza
//
//  Created by mac on 3/7/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class RecipePizzaTableViewCell: UITableViewCell {
    
    let recipeCellView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.setCellShadow()
        return view
    }()
    
    let pictureImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.imageViewCorners()
        return image
    }()
    
    let title: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 20)
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.textAlignment = .left
        return label
    }()
    
    let descriptionContent: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 20)
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.textAlignment = .left
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    func setupView() {
        addSubview(recipeCellView)
        addSubview(pictureImageView)
        addSubview(title)
        addSubview(descriptionContent)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        
        // recipeCellView consntraint
        recipeCellView.setAnchor(top: topAnchor, left: leftAnchor, right: rightAnchor, bottom: bottomAnchor, paddingTop: 13, paddingLeft: 30, paddingRight: -30, paddingBottom: -13)
        
        // pictureImageView consntraint
        pictureImageView.setAnchor(top: recipeCellView.topAnchor, left: recipeCellView.leftAnchor, right: nil, bottom: recipeCellView.bottomAnchor, paddingTop: 15, paddingLeft: 15, paddingRight: 0, paddingBottom: -15, width: 100, height: 100)
        pictureImageView.centerYAnchor.constraint(equalTo: recipeCellView.centerYAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
