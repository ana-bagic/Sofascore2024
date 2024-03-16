//
//  Match.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import Foundation

struct Match {
    
    let team1: Team
    let team2: Team
    let team1Score: Int?
    let team2Score: Int?
    let startTime: Date
    let status: MatchStatus
    let currentMinute: Int?
}

enum MatchStatus {
    
    case finished, running, notStarted
}
