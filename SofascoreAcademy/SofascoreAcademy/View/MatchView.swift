//
//  MatchView.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import SofaAcademic
import UIKit

class MatchView: BaseView {
    
    let matchTimeView: MatchTimeView
    let homeTeamView: TeamScoreView
    let awayTeamView: TeamScoreView
    
    init(matchModel: MatchViewModel) {
        matchTimeView = MatchTimeView(matchTimeViewModel: matchModel.matchTimeViewModel)
        homeTeamView = TeamScoreView(teamScoreViewModel: matchModel.homeTeamViewModel)
        awayTeamView = TeamScoreView(teamScoreViewModel: matchModel.awayTeamViewModel)
        super.init()
    }
    
    override func addViews() {
        addSubview(matchTimeView)
        addSubview(homeTeamView)
        addSubview(awayTeamView)
    }
    
    override func setupConstraints() {
        matchTimeView.snp.makeConstraints() {
            $0.top.bottom.leading.equalToSuperview()
            $0.width.equalTo(64)
        }
        
        homeTeamView.snp.makeConstraints() {
            $0.top.equalToSuperview().inset(10)
            $0.leading.equalTo(matchTimeView.snp.trailing).offset(16)
            $0.trailing.equalToSuperview().inset(16)
        }
        
        awayTeamView.snp.makeConstraints() {
            $0.top.equalTo(homeTeamView.snp.bottom).offset(4)
            $0.bottom.equalToSuperview().inset(10)
            $0.leading.equalTo(matchTimeView.snp.trailing).offset(16)
            $0.trailing.equalToSuperview().inset(16)
        }
    }
}
