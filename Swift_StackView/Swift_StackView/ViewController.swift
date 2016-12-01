//
//  ViewController.swift
//  Swift_StackView
//
//  Created by IanFan on 2016/11/29.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myStackView:UIStackView!
    
    var imageList: [String] = ["bg-1", "bg-2", "bg-3","bg-4","bg-5"]
    
    var imageCount:Int = 0
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myStackView =  self.getStackView()
        
        self.addImage()
        
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(addImage))
        self.view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Command
    
    func addImage() {
        if imageCount < imageList.count {
            let imageName:String =  imageList[imageCount]
            let imageView:UIImageView = UIImageView.init(image: UIImage.init(named: imageName))
            imageView.contentMode = UIViewContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            self.myStackView.addArrangedSubview(imageView)
            
            imageCount += 1
        }
    }
    
    //MARK: - Factory
    
    func getStackView() -> UIStackView {
        if myStackView == nil {
            let stackView = UIStackView()
            stackView.axis = .horizontal
            stackView.distribution = .fillEqually
            stackView.spacing = .abs(6)
            stackView.frame = self.view.bounds
            self.view.addSubview(stackView)
            myStackView = stackView
        }
        return myStackView
    }

}

