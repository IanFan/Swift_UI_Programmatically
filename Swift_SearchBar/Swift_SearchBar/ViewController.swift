//
//  ViewController.swift
//  Swift_SearchBar
//
//  Created by IanFan on 2016/11/22.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    var mySearchBar:UISearchBar!
    
    var myTableView:UITableView!
    
    var isSearching:Bool = false
    
    var list:[String] = [String]()
    var searchingList:[String] = [String]()
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        list = [
            "Apple", "Apricot", "Avocado",
            "Banana", "Blueberry",
            "Coconut", "Custard Apple",
            "Dates", "Durian",
            "Fig",
            "Gooseberry", "Grapes", "Guava",
            "Jackfruit",
            "Lemon", "Lime", "Longan", "Lychee",
            "Mango",
            "Orange",
            "Papaya", "Pear", "Pineapple", "Pomogranate",
            "Raspberry",
            "Strawberry",
            "Watermelon"
        ]
        
        mySearchBar = self.getSearchBar()
        
        myTableView = self.getTableView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Factory
    //MARK: - DataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isSearching == true {
            return searchingList.count
        }
        return list.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Getting the right element
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
            ?? UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)
        
//        let title = titles[indexPath.row]
        
        cell.textLabel?.text = title
        
        if isSearching {
            cell.textLabel?.text = searchingList[indexPath.row]
        }
        else {
            cell.textLabel?.text = list[indexPath.row]
        }
        
        // Returning the cell
        return cell
    }
    
    //MARK: - TableView Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("didSelectRowAt :", indexPath.row)
    }
    
    //MARK: - UISearchBar delegate
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if self.mySearchBar.text!.isEmpty {
            
            // set searching false
            self.isSearching = false
            
            // reload table view
            self.myTableView.reloadData()
            
        }else{
            
            // set searghing true
            self.isSearching = true
            
            // empty searching array
            self.searchingList.removeAll(keepingCapacity: false)
            
            // find matching item and add it to the searcing array
            for i in 0..<self.list.count {
                
                let listItem : String = self.list[i]
                if listItem.lowercased().range(of: self.mySearchBar.text!.lowercased()) != nil {
                    self.searchingList.append(listItem)
                }
            }
            
            self.myTableView.reloadData()
        }
        
    }
    
    // hide kwyboard when search button clicked
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.mySearchBar.resignFirstResponder()
    }
    
    // hide keyboard when cancel button clicked
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        self.isSearching = false
        
        self.mySearchBar.text = ""
        self.mySearchBar.resignFirstResponder()
        
        self.myTableView.reloadData()
    }
    
    //MARK: - Factory
    
    func getTableView() -> UITableView {
        if myTableView == nil {
            let tableView = UITableView()
            tableView.delegate = self
            tableView.dataSource = self
            tableView.frame = .init(x: 0, y: mySearchBar.frame.origin.y + mySearchBar.frame.size.height, width: self.view.frame.size.width, height: self.view.frame.size.height - (mySearchBar.frame.origin.y + mySearchBar.frame.size.height))
            self.view.addSubview(tableView)
            myTableView = tableView
        }
        return myTableView
    }
    
    func getSearchBar() -> UISearchBar {
        if mySearchBar == nil {
            let searchBar = UISearchBar()
            searchBar.delegate = self
            searchBar.frame = .init(x: 0, y: 0, width: self.view.frame.size.width, height: 80)
            searchBar.showsCancelButton = true
            searchBar.showsBookmarkButton = false
            searchBar.showsSearchResultsButton = false
            searchBar.searchBarStyle = .default
            searchBar.placeholder = "Input text"
            self.view.addSubview(searchBar)
            mySearchBar = searchBar
        }
        return mySearchBar
    }
}

