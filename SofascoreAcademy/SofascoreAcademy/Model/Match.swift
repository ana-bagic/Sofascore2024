//
//  Match.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import Foundation

struct Match {
    
    let homeTeam: Team
    let awayTeam: Team
    let homeTeamScore: Int?
    let awayTeamScore: Int?
    // 1 - home team won, 2 - away team won, 3 - draw
    let winnerCode: Int?
    let startTimestamp: Int
    let matchStatus: MatchStatus
    let currentMinute: Int?
}

enum MatchStatus {
    
    case notStarted
    case inProgress
    case finished
}
