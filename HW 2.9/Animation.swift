//
//  Animation.swift
//  HW 2.9
//
//  Created by Aleksei Goranov on 26.02.2021.
//
import Spring

struct Animation {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    
    init() {
        preset = Spring.AnimationPreset.allCases.randomElement()!.rawValue
        curve = Spring.AnimationCurve.allCases.randomElement()!.rawValue
        force = (CGFloat.random(in: 0...2) * 100).rounded() / 100
        duration = (CGFloat.random(in: 0...3) * 100).rounded() / 100
        delay = (CGFloat.random(in: 0.1...1) * 100).rounded() / 100
    }
}
