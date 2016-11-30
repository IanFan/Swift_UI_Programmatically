//
//  ViewController.swift
//  Swift_AlertController
//
//  Created by IanFan on 2016/11/17.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myAlertController:UIAlertController!
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myAlertController = self.getAlertController()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.present(myAlertController, animated: true, completion: {
            print("presented alertController")
        })
    }

    //MARK: - Factory

    func getAlertController() -> UIAlertController {
        if myAlertController == nil {
            let alertController = UIAlertController.init(title: "Title",
                                                         message: "Message",
                                                         preferredStyle: .alert)
            
            //Text fields can only be added to an alert controller of style UIAlertControllerStyleAlert
            alertController.addTextField(configurationHandler: {
                (field:UITextField) -> () in
                
            })
            
            let action1 = UIAlertAction.init(title: "Cancel", style: .destructive, handler: {
                (action: UIAlertAction) -> () in
                print("action1")
            })
            let action2 = UIAlertAction.init(title: "Done", style: .default, handler: {
                (action: UIAlertAction) -> () in
                print("action2")
            })
            alertController.addAction(action1)
            alertController.addAction(action2)
            
            myAlertController = alertController
        }
        return myAlertController
    }
}

