//
//  ViewController.swift
//  Swift_WebView
//
//  Created by IanFan on 2016/11/17.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var urlStr:String!
    
    var myWebView:UIWebView!
    
    var refreshButton:UIButton!
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Refresh", style: .plain, target: self, action: #selector(rightBarButtonTapped(sender:)))
        
        myWebView = self.getWebView()
        
        let urlStr:String = "https://www.google.com"
        if let url:URL = URL.init(string: urlStr) {
            let urlRequest:URLRequest = .init(url: url)
            myWebView.loadRequest(urlRequest)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Command
    
    func rightBarButtonTapped(sender:UIBarButtonItem) {
        print("rightBarButtonTapped")
        myWebView .reload()
    }
    
    //MARK: - Factory
    
    func getWebView() -> UIWebView {
        if myWebView == nil {
            let webView = UIWebView()
            webView.frame = self.view.bounds
            self.view.addSubview(webView)
            myWebView = webView
        }
        return myWebView
    }

}

