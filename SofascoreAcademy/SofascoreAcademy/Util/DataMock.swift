//
//  DataMock.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import Foundation

func createMockLeague() -> League {
    return League(leagueName: "LaLiga", countryName: "Spain", logoImage: .laliga)
}

func createMockMatches() -> Array<Match> {
    var matches: Array<Match> = []
    
    let barcelona: Team = Team(teamName: "Barcelona", logoImage: .barcelona)
    let manchester: Team = Team(teamName: "Manchester United", logoImage: .manchesterUnited)
    
    matches.append(Match(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, matchStatus: MatchStatus.finished, currentMinute: nil))
    matches.append(Match(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, matchStatus: MatchStatus.inProgress, currentMinute: 36))
    matches.append(Match(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, matchStatus: MatchStatus.notStarted, currentMinute: nil))
    matches.append(Match(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, matchStatus: MatchStatus.notStarted, currentMinute: nil))
    
    return matches
}
