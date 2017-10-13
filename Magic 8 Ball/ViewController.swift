//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Daniel Torrijos on 10/7/17.
//  Copyright © 2017 Daniel Torrijos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var BallArray = ["ball1","ball2","ball3","ball4","ball5"]
    var blackBallImage : Int = 0
  
    @IBOutlet weak var Ball8Image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        solveQuestion()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        solveQuestion()
    }
    func solveQuestion() {
        blackBallImage=Int(arc4random_uniform(4))
        Ball8Image.image = UIImage(named: BallArray[blackBallImage])
        
    }
}

