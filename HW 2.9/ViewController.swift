//
//  ViewController.swift
//  HW 2.9
//
//  Created by Aleksei Goranov on 26.02.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationPresetLabel: UILabel!
    @IBOutlet var animationCurveLabel: UILabel!
    @IBOutlet var animationForceLabel: UILabel!
    @IBOutlet var animationDurationLabel: UILabel!
    @IBOutlet var animationDelayLabel: UILabel!
    @IBOutlet var animationButtonLabel: UILabel!
    
    
    
    @IBAction func animationButton(_ sender: SpringButton) {
        
        animationView.animation = Animation().preset
        animationView.curve = Animation().curve
        animationView.force = Animation().force
        animationView.duration = Animation().duration
        animationView.delay = Animation().delay
        animationView.animate()
        
        animationPresetLabel.text = "preset: \(animationView.animation)"
        animationCurveLabel.text = "curve: \(animationView.curve)"
        animationForceLabel.text = "force: \(animationView.force)"
        animationDurationLabel.text = "duration: \(animationView.duration)"
        animationDelayLabel.text = "delay: \(animationView.delay)"
        animationButtonLabel.text = "run \(animationView.animation)"
    }
}
