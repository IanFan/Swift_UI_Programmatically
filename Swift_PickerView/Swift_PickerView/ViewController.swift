//
//  ViewController.swift
//  Swift_PickerView
//
//  Created by IanFan on 2016/11/16.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var myPickerView:UIPickerView!
    
    var allLists:[[String]]!
    
    var colorList:[String]!
    
    var sizeList:[String]!
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.setupData()
        
        myPickerView = self.getPickerView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - DataSource
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return allLists.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return allLists[component].count
    }
    
    //MARK: - Delegate
    
//    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
//        
//    }
    
//    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
//        
//    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return allLists[component][row]
    }
    
//    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
//        
//    }
    
//    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//        
//    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(component, row)
    }

    
    //MARK: - Utility
    
    fileprivate func setupData(){
        colorList = ["(( Select ))", "Black", "Blue", "Brown", "Green", "Orange", "Pink" , "Purple", "Red", "Yellow"]
        
        sizeList = ["(( Select ))","S", "M", "L", "XL" ]
        
        allLists = [colorList, sizeList]
    }
    
    //MARK: - Factory
    
    func getPickerView() -> UIPickerView {
        if myPickerView == nil {
            let pickerView = UIPickerView()
            pickerView.delegate = self
            pickerView.dataSource = self
            
            self.view.addSubview(pickerView)
            myPickerView = pickerView
        }
        return myPickerView
    }

}

