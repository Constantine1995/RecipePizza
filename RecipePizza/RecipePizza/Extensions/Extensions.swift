//
//  Extensions
//  RecipePizza
//
//  Created by mac on 3/7/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
import UIKit

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PopularPizzaCellId, for: indexPath) as! RecipePizzaTableViewCell
        
        cell.picturePizzaImageView.image = recipeData[indexPath.row].image
        cell.title.text = recipeData[indexPath.row].title
        cell.descriptionContent.text = recipeData[indexPath.row].description
        cell.pictireAlarmClockImageView.image = recipeData[indexPath.row].imageClock
        cell.minutes.text = recipeData[indexPath.row].timeForPreparing
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let recipeDetailViewController = DetailViewController()
        
        navigationController?.customPushViewController(recipeDetailViewController, animated: true)
        recipeDetailViewController.pizza = recipeData[indexPath.item]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

extension DetailViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return ingredientsArray.count
        }
        return cooking.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //        let headerCell = UINib(nibName: "HeaderSections", bundle: nil).instantiate(withOwner: self, options: nil) as! HeaderSections
        
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
        
        cell.ingredientContent.text = nil
        cell.descriptionContent.text = nil
        
        if indexPath.section == 0 {
            cell.checkMark = checkbox
            cell.ingredientContent.text = ingredientsArray[indexPath.row]
        } else {
            cell.descriptionContent.text = cooking[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

extension AllPizzaViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, AllPizzaCollectionViewCellDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allPizzaData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellAllPizza, for: indexPath) as!  AllPizzaCollectionViewCell
        
        cell.delegate = self
        cell.layer.cornerRadius = 10
        cell.backgroundColor = .white
        cell.pizza = allPizzaData[indexPath.item]
        
        return cell
    }
    
    func didCellTap(cell: AllPizzaCollectionViewCell) {
        
        guard let indexPath = collectionPizza.indexPath(for: cell)  else { return }
        let recipeDetailViewController = DetailViewController()
        
        navigationController?.customPushViewController(recipeDetailViewController, animated: true)
        recipeDetailViewController.pizza = recipeData[indexPath.item]
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 165, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 15, bottom: 8, right: 15)
    }
    
}

extension ContainerViewController: HomeControllerDelegate {
    
    func handleMenuToggle(forMenuOption menuOption: MenuCell?) {
        if !isExpanded {
            setupMenuViewController()
        }
        isExpanded = !isExpanded
        animatePanel(shouldExpand: isExpanded, menuOption: menuOption)
    }
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reueIdentifer, for: indexPath) as! MenuOptionTableViewCell
        let menuOption = MenuCell(rawValue: indexPath.row)
        cell.iconImage.image = menuOption?.image
        cell.nameMenuItem.text = menuOption?.description
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuOption = MenuCell(rawValue: indexPath.row)
        delegate?.handleMenuToggle(forMenuOption: menuOption)
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





