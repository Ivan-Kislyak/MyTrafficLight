//
//  ViewController.swift
//  MyTrafficLight
//
//  Created by  Ivan Kiskyak on 2.03.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var startButton: UIButton!
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    private var lightOn = 1.0
    private var lightOff = 0.3
    
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        
        redLight.alpha = lightOff
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
        
    }
    
    override func viewWillLayoutSubviews() {
        
        redLight.layer.cornerRadius = redLight.frame.width * 0.5
        yellowLight.layer.cornerRadius = yellowLight.frame.width * 0.5
        greenLight.layer.cornerRadius = greenLight.frame.width * 0.5
        
    }

    @IBAction func startButtonAction(_ sender: Any) {
        startButton.setTitle("NEXT", for: .normal)
        
        count += 1

        switch count {
        case 1: redLight.alpha = lightOn
        case 2: redLight.alpha = lightOff
                yellowLight.alpha = lightOn
        case 3: yellowLight.alpha = lightOff
                greenLight.alpha = lightOn
        default:
                count = 1
                greenLight.alpha = lightOff
                redLight.alpha = lightOn
        }
    }
}

