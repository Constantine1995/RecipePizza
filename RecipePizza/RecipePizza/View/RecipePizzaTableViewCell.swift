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

    let picturePizzaImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.imageViewCorners()
        return image
    }()
    
    let pictireAlarmClockImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let minutes: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 15)
        label.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        label.textAlignment = .left
        return label
    }()
    
    let title: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 18)
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.textAlignment = .left
        
        return label
    }()
    
    let descriptionContent: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 15)
        label.numberOfLines = 2
        label.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        label.textAlignment = .left
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
    }
    
    func setupView() {
        addSubview(recipeCellView)
        addSubview(picturePizzaImageView)
        addSubview(title)
        addSubview(descriptionContent)
        addSubview(pictireAlarmClockImageView)
        addSubview(minutes)
        setupConstraints()
    }
    
    func setupConstraints() {
        
        // recipeCellView consntraint
        recipeCellView.setAnchor(top: topAnchor, left: leftAnchor, right: rightAnchor, bottom: bottomAnchor, paddingTop: 13, paddingLeft: 25, paddingRight: -25, paddingBottom: -13)
        
        // pictureImageView consntraint
        picturePizzaImageView.setAnchor(top: recipeCellView.topAnchor, left: recipeCellView.leftAnchor, right: nil, bottom: recipeCellView.bottomAnchor, paddingTop: 15, paddingLeft: 15, paddingRight: 0, paddingBottom: -15, width: 100, height: 100)
        picturePizzaImageView.centerYAnchor.constraint(equalTo: recipeCellView.centerYAnchor).isActive = true
        
        // title consntraint
        
        title.setAnchor(top: recipeCellView.topAnchor, left: picturePizzaImageView.rightAnchor, right: recipeCellView.rightAnchor, bottom: nil, paddingTop: 15, paddingLeft: 15, paddingRight: 15, paddingBottom: 0)
        
        // descriptionContent consntraint
        descriptionContent.setAnchor(top: title.bottomAnchor, left: picturePizzaImageView.rightAnchor, right: recipeCellView.rightAnchor, bottom: nil, paddingTop: 5, paddingLeft: 15, paddingRight: -15, paddingBottom: 0)
        
        // pictireAlarmClockImageView consntraint
        pictireAlarmClockImageView.setAnchor(top: descriptionContent.bottomAnchor, left: picturePizzaImageView.rightAnchor, right: nil, bottom: nil, paddingTop: 7, paddingLeft: 15, paddingRight: 0, paddingBottom: 0, width: 17, height: 17)
        
        // minutes consntraint
        minutes.setAnchor(top: descriptionContent.bottomAnchor, left: pictireAlarmClockImageView.rightAnchor, right: nil, bottom: nil, paddingTop: 7, paddingLeft: 5, paddingRight: 0, paddingBottom: 0)
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
