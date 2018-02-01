//
//  SecondVC.swift
//  UIBuild_Project
//
//  Created by Rabeeh KP on 01/02/18.
//  Copyright © 2018 Rabeeh KP. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    
    
    
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var secView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        firstView.layer.cornerRadius = 5
        secView.layer.cornerRadius = 5
        thirdView.layer.cornerRadius = 5
        
        let swipeLeft : UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(SecondVC.swipe(sender:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        
        let swipeRight : UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(SecondVC.swipe(sender:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        
        self.view.addGestureRecognizer(swipeLeft)
        self.view.addGestureRecognizer(swipeRight)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func prevButtn(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let destination = storyBoard.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdVC
        self.present(destination, animated: false, completion: nil)
    }
    
    @objc func swipe(sender: UISwipeGestureRecognizer) {
        
        switch sender.direction {
        case UISwipeGestureRecognizerDirection.right:
            dismiss(animated: false, completion: nil)
        case UISwipeGestureRecognizerDirection.left:
            let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
            let destination = storyBoard.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdVC
            self.present(destination, animated: false, completion: nil)
        default:
            break
        }
    }
    
    
}
