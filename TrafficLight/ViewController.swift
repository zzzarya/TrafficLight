//
//  ViewController.swift
//  TrafficLight
//
//  Created by Антон Заричный on 29.07.2022.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = redLightView.frame.size.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.size.width / 2
        
        redLightView.alpha = 0.5
        yellowLightView.alpha = 0.5
        greenLightView.alpha = 0.5
        
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonPressed() {
        if redLightView.alpha != 1 && yellowLightView.alpha != 1 && (greenLightView.alpha != 1 || greenLightView.alpha == 1) {
            greenLightView.alpha = 0.5
            redLightView.alpha = 1
        } else if redLightView.alpha == 1 && yellowLightView.alpha != 1 && greenLightView.alpha != 1 {
            redLightView.alpha = 0.5
            yellowLightView.alpha = 1
        } else if redLightView.alpha != 1 && yellowLightView.alpha == 1 && greenLightView.alpha != 1  {
            yellowLightView.alpha = 0.5
            greenLightView.alpha = 1
        } else {
            greenLightView.alpha = 0.5
        }
        startButton.setTitle(redLightView.alpha != 1 && yellowLightView.alpha != 1 && greenLightView.alpha != 1 ?
                             "START" : "NEXT", for: .normal)
    }
    
}

