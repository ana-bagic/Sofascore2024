//
//  DataMock.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import Foundation

func createMockLeague() -> League {
    return League(name: "LaLiga", country: "Spain", logo: Images.laligaLogo)
}

func createMockMatches() -> Array<Match> {
    var matches: Array<Match> = []
    
    let barcelona: Team = Team(name: "Barcelona", logo: Images.barcelonaLogo)
    let manchester: Team = Team(name: "Manchester United", logo: Images.manchesterLogo)
    
    matches.append(Match(team1: manchester, team2: barcelona, team1Score: 1, team2Score: 2, startTime: Date(timeIntervalSince1970: 1710590400), status: MatchStatus.finished, currentMinute: nil))
    matches.append(Match(team1: manchester, team2: barcelona, team1Score: 0, team2Score: 1, startTime: Date(timeIntervalSince1970: 1710601200), status: MatchStatus.inProgress, currentMinute: 36))
    matches.append(Match(team1: manchester, team2: barcelona, team1Score: nil, team2Score: nil, startTime: Date(timeIntervalSince1970: 1710608400), status: MatchStatus.notStarted, currentMinute: nil))
    matches.append(Match(team1: manchester, team2: barcelona, team1Score: nil, team2Score: nil, startTime: Date(timeIntervalSince1970: 1710613800), status: MatchStatus.notStarted, currentMinute: nil))
    
    return matches
}
