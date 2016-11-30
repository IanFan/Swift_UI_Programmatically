//
//  ViewController.swift
//  Swift_TableView
//
//  Created by IanFan on 2016/11/21.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var myTableView:UITableView!
    
    var titles:Array = ["1","2","3"]
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView = self.getTableView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - DataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Getting the right element
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
            ?? UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)
        
        let title = titles[indexPath.row]
        
        cell.textLabel?.text = title
        
        // Returning the cell
        return cell
    }
    
    //MARK: - Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("didSelectRowAt :", indexPath.row)
    }
    
    //MARK: - Factory
    
    func getTableView() -> UITableView {
        if myTableView == nil {
            let tableView = UITableView()
            tableView.delegate = self
            tableView.dataSource = self
            tableView.frame = self.view.bounds
            self.view.addSubview(tableView)
            myTableView = tableView
        }
        return myTableView
    }

}

