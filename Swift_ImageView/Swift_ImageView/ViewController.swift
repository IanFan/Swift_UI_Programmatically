//
//  ViewController.swift
//  Swift_ImageView
//
//  Created by IanFan on 2016/11/16.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myImageView:UIImageView!
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myImageView = self.getImageView()
        
//        myImageView = self.getAnimationImageView()
//        myImageView.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Factory

    func getImageView() -> UIImageView {
        if myImageView == nil {
            let imageView = UIImageView(frame: CGRect(x: 10, y: 20, width: 300, height: 200))
            imageView.image = UIImage(named:"icon")
            imageView.contentMode = .scaleAspectFit
            self.view.addSubview(imageView)
            myImageView = imageView
        }
        return myImageView
    }
    
    func getAnimationImageView() -> UIImageView {
        if myImageView == nil {
            let imageView = UIImageView(frame: CGRect(x: 10, y: 20, width: 300, height: 200))
            imageView.animationImages = [UIImage(named:"animation1")!, UIImage(named:"animation2")!]
            imageView.animationDuration = 1.0/2.0
            imageView.animationRepeatCount = 0
            self.view.addSubview(imageView)
            myImageView = imageView
        }
        return myImageView
    }

}

