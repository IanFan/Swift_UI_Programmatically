//
//  ViewController.swift
//  Swift_activityIndicatorView
//
//  Created by IanFan on 2016/11/15.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var avtivityIndicatorView:UIActivityIndicatorView!
    
    //MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        avtivityIndicatorView = self.getAvtivityIndicatorView()
        avtivityIndicatorView.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Factory
    
    func getAvtivityIndicatorView() -> UIActivityIndicatorView {
        if avtivityIndicatorView == nil {
            let a = UIActivityIndicatorView(activityIndicatorStyle:.gray)
            a.frame = CGRect(x: 10, y: 20, width: 30, height: 30)
            self.view.addSubview(a)
            avtivityIndicatorView = a
        }
        return avtivityIndicatorView
    }

}

