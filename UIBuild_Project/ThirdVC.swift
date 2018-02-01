//
//  ThirdVC.swift
//  UIBuild_Project
//
//  Created by Rabeeh KP on 01/02/18.
//  Copyright © 2018 Rabeeh KP. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {

    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secView: UIView!
    @IBOutlet weak var prevButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstView.layer.cornerRadius = 5
        secView.layer.cornerRadius = 5
        thirdView.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
        
        let swipeLeft = UISwipeGestureRecognizer()
        swipeLeft.direction = .left
        swipeLeft.direction = .right
        swipeLeft.addTarget(self, action: #selector(backSegue) )
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func prevButton(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    @IBAction func backSegue() {
        dismiss(animated: false, completion: nil)
    }
    
}
