//
//  ViewController.swift
//  Swift_Toolbar
//
//  Created by IanFan on 2016/11/21.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.blue
        
        
        self.navigationController?.setToolbarHidden(false, animated: false)
        self.navigationController?.toolbar.barTintColor = UIColor.red
        
        var items = [UIBarButtonItem]()
        
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let refresh = UIBarButtonItem(barButtonSystemItem: .play, target: self, action: #selector(refreshTapped))
        
        items.append(space)
        items.append(refresh)
        
        self.setToolbarItems(items, animated: false)
    }    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func barButtonItemTapped(sender:UIBarButtonItem) {
        print("barButtonItemTapped :",sender.tag)
    }
    
    func refreshTapped(sender:UIBarButtonItem) {
        print("barButtonItemTapped :",sender.tag)
    }

}

