//
//  ViewController.swift
//  Swift_CollectionView
//
//  Created by IanFan on 2016/11/21.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var myCollectionView:UICollectionView!
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myCollectionView = self.getCollectionView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - DataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = UIColor.blue
        return cell
    }
    
    //MARK: - Delegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("didSelectItemAt :", indexPath.row)
    }
    
    //MARK: - Factory
    
    func getCollectionView() -> UICollectionView {
        if myCollectionView == nil {
            let flowLayout = UICollectionViewFlowLayout()
            flowLayout.sectionInset = .init(top: 20, left: 10, bottom: 10, right: 10)
            flowLayout.itemSize = .init(width: 60, height: 60)
            
            let collectionView = UICollectionView.init(frame: self.view.bounds, collectionViewLayout: flowLayout)
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
            collectionView.backgroundColor = UIColor.white
            self.view.addSubview(collectionView)
            myCollectionView = collectionView
        }
        return myCollectionView
    }
}

