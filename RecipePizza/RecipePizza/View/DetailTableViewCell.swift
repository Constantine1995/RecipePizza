//
//  DetailTableViewCell.swift
//  RecipePizza
//
//  Created by mac on 3/11/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
   
    let headerImageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(headerImageView)
        setupConstraints()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints() {
        headerImageView.setAnchor(top: nil, left: nil, right: nil, bottom: nil, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: 0, width: frame.width, height: 250)
    }

}
