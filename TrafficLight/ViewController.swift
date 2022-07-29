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
        
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonPressed() {
    }
    
}

