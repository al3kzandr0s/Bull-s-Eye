//
//  Game.swift
//  bullseye
//
//  Created by Alex El-Shbeir on 03.07.2021.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) ->  Int {
        return 100 - abs(self.target - sliderValue)
    }
}
