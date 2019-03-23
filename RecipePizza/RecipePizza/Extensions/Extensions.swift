//
//  Extensions
//  RecipePizza
//
//  Created by mac on 3/7/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    var cells: [PopularRecipePizza] {
        return PopularRecipePizza.fetchRecipe()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PopularPizzaCellId, for: indexPath) as! RecipePizzaTableViewCell
        
        cell.picturePizzaImageView.image = cells[indexPath.row].image
        cell.title.text = cells[indexPath.row].title
        cell.descriptionContent.text = cells[indexPath.row].description
        cell.pictireAlarmClockImageView.image = cells[indexPath.row].imageClock
        cell.minutes.text = cells[indexPath.row].timeForPreparing
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let recipeDetailViewController = storyboard?.instantiateViewController(withIdentifier: "Details") as! DetailViewController
        navigationController?.customPushViewController(recipeDetailViewController, animated: true)
        
        recipeDetailViewController.headerImageView.image = cells[indexPath.row].image
        recipeDetailViewController.titleHeader.text = cells[indexPath.row].title
        recipeDetailViewController.timeForPrepare.text = cells[indexPath.row].timeForPreparing
        recipeDetailViewController.ingredientsArray = cells[indexPath.row].ingredients
        recipeDetailViewController.amountOfIngredientsText.text = String(cells[indexPath.row].amountOfIngredients)
        recipeDetailViewController.cooking = cells[indexPath.row].cooking
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

extension UIImageView {
    func imageViewCorners() {
        layer.cornerRadius = 10
        layer.masksToBounds = true
    }
}

extension UINavigationController {
    func customPushViewController(_ viewController: UIViewController, animated: Bool) {
        viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "back").withRenderingMode(.alwaysOriginal), style: .plain, target: navigationController, action: #selector(popViewController(animated:)))
        pushViewController(viewController, animated: animated)
    }
    
    func setupNavigationBarItems(_ navigationController: UINavigationController,  _ navigationItem: UINavigationItem ) {
        navigationController.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController.navigationBar.shadowImage = UIImage()
        navigationController.navigationBar.isTranslucent = true
        navigationController.view.backgroundColor = UIColor.clear// #colorLiteral(red: 0.0430477038, green: 0.1253411174, blue: 0.1920496821, alpha: 1)//UIColor.clear //#colorLiteral(red: 0.0430477038, green: 0.1253411174, blue: 0.1920496821, alpha: 1)
        
        let menuButton = UIButton(type: .system)
        menuButton.setImage(#imageLiteral(resourceName: "menu").withRenderingMode(.alwaysOriginal), for: .normal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: menuButton)
    }
}

extension UIView {
    
    func setCellShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.cornerRadius = 15
        self.layer.shadowOpacity = 0.1
        self.layer.shadowRadius = 7
        self.clipsToBounds = false
    }
    
    func setAnchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, right: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, paddingTop: CGFloat, paddingLeft: CGFloat, paddingRight: CGFloat, paddingBottom: CGFloat, width: CGFloat = 0, height: CGFloat = 0) {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        if width != 0 {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}





