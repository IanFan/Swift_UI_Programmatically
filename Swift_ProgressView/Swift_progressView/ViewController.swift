//
//  ViewController.swift
//  Swift_progressView
//
//  Created by IanFan on 2016/11/15.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var progressView:UIProgressView!
    var currentProgress:Float = 0.0
    var timer:Timer?
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        progressView = self.getProgressView()
        timer = Timer.scheduledTimer(timeInterval: 0.04, target: self, selector: #selector(ViewController.updateProgress), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Command
    
    func updateProgress() {
        progressView.progress = Float(currentProgress)
        
        if currentProgress >= 1.0 {
            currentProgress = 0.0
        }
        
        currentProgress += 0.01
    }
    
    //MARK: - Factory

    func getProgressView() -> UIProgressView {
        if progressView == nil {
            let p = UIProgressView(progressViewStyle:.bar)
            p.frame = CGRect(x: 10, y: 20, width: 300, height: 20)
            self.view.addSubview(p)
            progressView = p
        }
        return progressView
    }

}

