//
//  ViewController.swift
//  Swift_segmentedControl
//
//  Created by IanFan on 2016/11/15.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var segmentedControl = UISegmentedControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        segmentedControl.frame = CGRect(x: 10, y: 20, width: 300, height: 50)
        segmentedControl.insertSegment(withTitle: "Seg1", at: segmentedControl.numberOfSegments, animated: false)
        segmentedControl.insertSegment(withTitle: "Seg2", at: segmentedControl.numberOfSegments, animated: false)
        segmentedControl.insertSegment(withTitle: "Seg3", at: segmentedControl.numberOfSegments, animated: false)
        segmentedControl.selectedSegmentIndex = 1
        segmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged(sender:)), for: .valueChanged)
        self.view.addSubview(segmentedControl)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func segmentedControlValueChanged(sender:UISegmentedControl) {
        print("valueChanged:",sender.selectedSegmentIndex)
    }

}

