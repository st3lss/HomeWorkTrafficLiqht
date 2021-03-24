//
//  ViewController.swift
//  HomeWorkTrafficLiqht
//
//  Created by Tamerlan on 23.03.2021.
//

import UIKit


enum Colors {
    case red
    case yellow
    case green
}



class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    var color = Colors.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        startButton.layer.cornerRadius = 10
        redLightView.layer.cornerRadius = redLightView.frame.width/2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width/2
        greenLightView.layer.cornerRadius = greenLightView.frame.width/2
    }

    
    @IBAction func startButtonPressed() {
        startButton.setTitle("Next", for: .normal)
        
        switch color {
        case .red:
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            color = Colors.yellow
        case .yellow:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            color = Colors.green
        case .green:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            color = Colors.red
        }
    }
    
}

