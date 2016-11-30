//
//  ViewController.swift
//  Swift_VisualEffectView
//
//  Created by IanFan on 2016/11/17.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myVisualEffectView:UIVisualEffectView!
    var myImageView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myImageView = self.getImageView()
        myVisualEffectView = self.getVisualEffectView()
        myVisualEffectView.frame = myImageView.bounds
        myImageView.addSubview(myVisualEffectView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Factory
    
    func getImageView() -> UIImageView {
        if myImageView == nil {
            let imageView = UIImageView(image: UIImage(named: "icon"))
            imageView.frame = .init(x: 10, y: 20, width: 300, height: 300)
            self.view.addSubview(imageView)
            myImageView = imageView
        }
        return myImageView
    }
    
    func getVisualEffectView() -> UIVisualEffectView {
        if myVisualEffectView == nil {
            let visualEffectView = UIVisualEffectView()
            visualEffectView.effect = UIBlurEffect.init(style: .prominent)
            myVisualEffectView =  visualEffectView
        }
        return myVisualEffectView
    }
    
}

