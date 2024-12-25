//
//  ViewController.swift
//  IOS101-prework
//
//  Created by Do Hoang Gia Huy on 24/12/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBAction func changeTextColor(_ sender: UIButton) {
        let randomColor = changeColor()
        
        for subview in view.subviews {
             if let label = subview as? UILabel {
                 label.textColor = randomColor
             }
         }
    }
    
    @IBAction func changeFontSize(_ sender: UISlider) {
        let newFontSize = CGFloat(sender.value)
        
        // Change the font size of all labels
        for subview in view.subviews {
            if let label = subview as? UILabel {
                label.font = label.font.withSize(newFontSize)
            }
        }
    }
    
    func changeColor() -> UIColor{

        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    

}

