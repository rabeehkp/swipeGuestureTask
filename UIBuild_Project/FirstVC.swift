//
//  FirstVC.swift
//  UIBuild_Project
//
//  Created by Rabeeh KP on 01/02/18.
//  Copyright © 2018 Rabeeh KP. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    //MARK: -Variables
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var firstview: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var secView: UIView!
    
    //MARK: -View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        firstview.layer.cornerRadius = 5
        secView.layer.cornerRadius = 5
        thirdView.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
        
        let swipeLeft = UISwipeGestureRecognizer()
        swipeLeft.addTarget(self, action: #selector(backSegue) )
        swipeLeft.direction = .left
        self.view!.addGestureRecognizer(swipeLeft)
    }
    
    //MARK: -Action
    @IBAction func nextButton(_ sender: UIButton) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let destination = storyBoard.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        self.present(destination, animated: false, completion: nil)
    }
    @IBAction func backSegue() {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let destination = storyBoard.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        self.present(destination, animated: false, completion: nil)
    }

}
