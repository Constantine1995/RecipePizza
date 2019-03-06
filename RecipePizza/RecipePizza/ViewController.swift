//
//  ViewController.swift
//  RecipePizza
//
//  Created by mac on 3/6/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.width))
        imageView.image = UIImage(named: "RectHeader")
        imageView.contentMode = .scaleAspectFill
        
        self.view.addSubview(imageView)
    }


}

