//
//  TestData.swift
//  PracticeSwift
//
//  Created by Salim Jemai on 11/1/23.
//

import Foundation


    
func loopExample(){
    let individualScores = [75, 43, 103, 87, 12]
    var teamScore = 0
    
    for individualScore in individualScores {
        if individualScore > 50 {
            teamScore += 3
        } else {
            teamScore += 1
        }
        print(individualScore)
    }
}
