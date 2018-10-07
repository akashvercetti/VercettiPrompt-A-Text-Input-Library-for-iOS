//
//  ViewController.swift
//  VercettiPromptDemo
//
//  Created by Akash Malhotra on 06/10/18.
//  Copyright © 2018 Akashvercetti Productions. All rights reserved.
//

import UIKit
import VercettiPrompt

class ViewController: UIViewController {
    
    @IBOutlet weak var lblText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func pressedBasic() {
        let textPromptVC = TextInputPromptViewController.instantiateFromStoryboard()
        textPromptVC.modalPresentationStyle = .custom
        let vercettiTransistionDelegate = VercettiTransistionDelegate()
        textPromptVC.transitioningDelegate = vercettiTransistionDelegate
        
        textPromptVC.vercettiPromptDelegate = self
        textPromptVC.titleText = "The wheels of the bus go round and round"
        textPromptVC.positiveButtonText = "Confirm"
        textPromptVC.descriptionText = "Round and round"
        present(textPromptVC, animated: true, completion: nil)
    }
    
    @IBAction func pressedCustomized() {
        let textPromptVC = TextInputPromptViewController.instantiateFromStoryboard()
        textPromptVC.vercettiPromptDelegate = self
        textPromptVC.modalPresentationStyle = .custom
        let vercettiTransistionDelegate = VercettiTransistionDelegate()
        textPromptVC.transitioningDelegate = vercettiTransistionDelegate
        textPromptVC.titleText = "The wheels of the bus go round and round"
        textPromptVC.positiveButtonText = "Confirm"
        textPromptVC.placeholderText = "All day long"
        //        textPromptVC.isTextMandatory = true
        textPromptVC.descriptionText = "Round and round"
        textPromptVC.titleFont = UIFont.boldSystemFont(ofSize: 28)
        textPromptVC.descriptionFont = UIFont.systemFont(ofSize: 18)
        textPromptVC.titleColor = UIColor.red
        textPromptVC.descriptionColor = UIColor.blue
        
        present(textPromptVC, animated: true, completion: nil)
    }
    
    @IBAction func pressedCustomButtons() {
       
        let textPromptVC = TextInputPromptViewController.instantiateFromStoryboard()
        textPromptVC.modalPresentationStyle = .custom
        let vercettiTransistionDelegate = VercettiTransistionDelegate()
        textPromptVC.transitioningDelegate = vercettiTransistionDelegate
        
        textPromptVC.vercettiPromptDelegate = self
        textPromptVC.titleText = "How can mirrors be real if our eyes aren't real?"
        textPromptVC.positiveButtonText = "Cool Button Wew"
        textPromptVC.negativeButtonText = "Swag Yolo"
        textPromptVC.descriptionText = "OHHHHHHH"
        
        textPromptVC.negativeButtonType = ButtonType.bordered(borderColor: UIColor.gray, borderRadius: 5, textColor: UIColor.red, borderWidth: 2)
        textPromptVC.positiveButtonType = ButtonType.solid(backgroundColor: UIColor.blue, textColor: UIColor.white)
        
        present(textPromptVC, animated: true, completion: nil)
    }
}

extension ViewController: VercettiPromptDelegate {
    
    func textAdded(text: String?) {
        if let text = text, !text.isEmpty {
            lblText.text = "You typed: " + text
        }
        else {
            lblText.text = "You pressed Skip"
        }
    }
    
}

