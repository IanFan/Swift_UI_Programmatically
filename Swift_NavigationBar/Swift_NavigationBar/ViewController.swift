//
//  ViewController.swift
//  Swift_NavigationBar
//
//  Created by IanFan on 2016/11/18.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "Setting", style: .plain, target: self, action: #selector(rightBarButtonItemTapped(sender:)))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Command
    
    func rightBarButtonItemTapped(sender:UIBarButtonItem) {
        let viewController:SettingViewController = SettingViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }

}

