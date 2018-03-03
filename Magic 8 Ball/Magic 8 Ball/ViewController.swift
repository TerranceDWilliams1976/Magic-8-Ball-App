//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by terrance williams on 3/3/18.
//  Copyright © 2018 Terrance Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 3

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomBallNumber = Int (arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        viewDidLoad()
        
    }
    
}

