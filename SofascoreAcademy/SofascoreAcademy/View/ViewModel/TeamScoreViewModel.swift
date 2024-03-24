//
//  TeamScoreViewModel.swift
//  SofascoreAcademy
//
//  Created by Akademija on 21.03.2024..
//

import UIKit

struct TeamScoreViewModel {
    
    let teamName: String
    let logoImage: UIImage
    let teamScore: String
    
    let teamNameColor: UIColor
    let teamScoreColor: UIColor
    
    init(teamModel: Team, teamScore: String, scoreStatus: ScoreStatus) {
        self.teamName = teamModel.teamName
        self.logoImage = teamModel.logoImage
        self.teamScore = teamScore
        
        switch scoreStatus {
        case .notFinished:
            teamNameColor = .onSurfaceLv1
            teamScoreColor = .specificLive
        case .won:
            teamNameColor = .onSurfaceLv1
            teamScoreColor = .onSurfaceLv1
        case .lost, .draw:
            teamNameColor = .onSurfaceLv2
            teamScoreColor = .onSurfaceLv2
        }
    }
}

enum ScoreStatus {
    
    case notFinished
    case won
    case lost
    case draw
}
