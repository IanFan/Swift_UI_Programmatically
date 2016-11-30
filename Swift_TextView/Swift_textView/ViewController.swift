//
//  ViewController.swift
//  Swift_textView
//
//  Created by IanFan on 2016/11/15.
//  Copyright © 2016年 IanFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    var myTextView:UITextView!
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTextView = self.getTextView()
        myTextView.text = "My TextView"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Touches
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if myTextView.isFirstResponder == true {
            myTextView.resignFirstResponder()
        }
    }
    
    //MARK: - Delegate
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        return true
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        
    }
    
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        return true
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        return true
    }
    
    func textViewDidChange(_ textView: UITextView) {
        
    }
    
    func textViewDidChangeSelection(_ textView: UITextView) {
        
    }
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        return true
    }
    
    func textView(_ textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        return true
    }
    
    //MARK: - Factory
    
    func getTextView() -> UITextView {
        if myTextView == nil {
            let textView = UITextView()
            textView.delegate = self
            textView.frame = CGRect(x: 10, y: 20, width: 300, height: 50)
            self.view.addSubview(textView)
            myTextView = textView
        }
        return myTextView
    }

}

