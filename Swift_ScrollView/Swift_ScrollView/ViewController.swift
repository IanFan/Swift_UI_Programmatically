//
//  ViewController.swift
//  Swift_ScrollView
//
//  Created by IanFan on 2016/11/16.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    var myScrollView:UIScrollView!
    var myImageView:UIImageView!
    
    //MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myImageView = self.getImageView()
        myScrollView = self.getScrollView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//MARK: Delegate
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return myImageView
    }

    //MARK: Factory
    
    func getImageView() -> UIImageView {
        if myImageView == nil {
            let imageView = UIImageView()
            imageView.frame = CGRect(x: 10, y: 20, width: 300, height: 300)
            imageView.image = UIImage.init(named: "icon")
            self.view.addSubview(imageView)
            myImageView = imageView
        }
        return myImageView
    }
    
    func getScrollView() -> UIScrollView {
        if myScrollView == nil {
            let imageView = self.getImageView()
            let scrollView = UIScrollView()
            scrollView.delegate = self
            scrollView.frame = .init(x: 10, y: 20, width: 300, height: 200)
            scrollView.contentSize = myImageView.bounds.size
            scrollView.autoresizesSubviews = true
            scrollView.contentOffset = CGPoint.zero
            scrollView.backgroundColor = UIColor.darkGray
            
            let currentZoomScale = scrollView.bounds.height/imageView.bounds.size.height
            scrollView.minimumZoomScale =  currentZoomScale / 2
            scrollView.maximumZoomScale = 1.0
            scrollView.zoomScale = currentZoomScale
            
            self.view.addSubview(scrollView)
            scrollView.addSubview(imageView)
            myScrollView = scrollView
        }
        return myScrollView
    }
    
    
}

