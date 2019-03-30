//
//  AllPizzaCollectionViewCell.swift
//  RecipePizza
//
//  Created by mac on 3/24/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import Cosmos

class AllPizzaCollectionViewCell: UICollectionViewCell {
    
    weak var delegate: AllPizzaCollectionViewCellDelegate?
    
    var pizza: AllPizza? {
        didSet {
            guard let pizzaImage = pizza?.pizzaImage else { return }
            guard let clockImage = pizza?.imageClock else { return }
            guard let nameLabel = pizza?.nameLabel else { return }
            guard let timeLabel = pizza?.timeForPreparing else { return }
            
            pizzaImageView.image = pizzaImage
            clockImageView.image = clockImage
            self.timeLabel.text = timeLabel
            self.nameLabel.text = nameLabel
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    let pizzaImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.isUserInteractionEnabled = true
        return image
    }()
    
    let clockImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont(name: "Helvetica", size: 23)
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        return label
    }()
    
    let timeLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont(name: "Helvetica Neue", size: 17)
        label.textColor = .lightGray
        return label
    }()
    
    let ratingView: CosmosView = {
        let view = CosmosView()
        view.text = "3.0"
        view.settings.filledImage = #imageLiteral(resourceName: "fillStar").withRenderingMode(.alwaysOriginal)
        view.settings.emptyImage = #imageLiteral(resourceName: "emptyStar").withRenderingMode(.alwaysOriginal)
        view.settings.fillMode = .precise
        view.settings.textColor = #colorLiteral(red: 0.9998577237, green: 0.8516119123, blue: 0.2453690469, alpha: 1)
        view.settings.textMargin = 10
        view.settings.starSize = 15
        view.settings.textFont = UIFont(name: "Helvetica Neue", size: 15)!
        view.didTouchCosmos = { rating in
            view.text = String(format: "%.1f", rating)
        }
        return view
    }()
    
    func setupView() {
        
        addSubview(pizzaImageView)
        addSubview(clockImageView)
        addSubview(nameLabel)
        addSubview(timeLabel)
        addSubview(ratingView)

        let gestureCellTap = UITapGestureRecognizer(target: self, action: #selector(didCellTap))
        self.addGestureRecognizer(gestureCellTap)
        
        let gestureTap = UITapGestureRecognizer(target: self, action: #selector(didRatingTap))
        ratingView.addGestureRecognizer(gestureTap)
        
        pizzaImageView.setAnchor(top: topAnchor, left: leftAnchor, right: rightAnchor, bottom: nil, paddingTop: 10, paddingLeft: 10, paddingRight: -10, paddingBottom: 0, height: 130)
        
        nameLabel.setAnchor(top: pizzaImageView.bottomAnchor, left: leftAnchor, right: rightAnchor, bottom: nil, paddingTop: 0, paddingLeft: 10, paddingRight: -10, paddingBottom: 0)
        
        ratingView.setAnchor(top: nameLabel.bottomAnchor, left: nil, right: nil, bottom: nil, paddingTop: 15, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
        ratingView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        clockImageView.setAnchor(top: ratingView.bottomAnchor, left: leftAnchor, right: nil, bottom: nil, paddingTop: 15, paddingLeft: 20, paddingRight: 0, paddingBottom: 0, width: 20, height: 20)
        
        timeLabel.setAnchor(top: nil, left: nil, right: rightAnchor, bottom: nil, paddingTop: 0, paddingLeft: 0, paddingRight: -20, paddingBottom: 0)
        
        timeLabel.centerYAnchor.constraint(equalTo: clockImageView.centerYAnchor).isActive = true
    }
    
    @objc func didCellTap() {
        delegate?.didCellTap(cell: self)
    }
    
    @objc func didRatingTap() {
   
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
