//
//  LeagueComponentView.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import Foundation
import UIKit
import SofaAcademic

class LeagueComponentView: BaseView {
    
    let leagueHeader: LeagueHeaderView
    let match1View: MatchView
    let match2View: MatchView
    let match3View: MatchView
    let match4View: MatchView
    let matchesStack: UIStackView = UIStackView()
    
    init(league: League, matches: Array<Match>) {
        leagueHeader = LeagueHeaderView(league: league)
        match1View = MatchView(match: matches[0])
        match2View = MatchView(match: matches[1])
        match3View = MatchView(match: matches[2])
        match4View = MatchView(match: matches[3])
        
        super.init()
    }
    
    override func addViews() {
        addSubview(leagueHeader)
        
        matchesStack.addArrangedSubview(match1View)
        matchesStack.addArrangedSubview(match2View)
        matchesStack.addArrangedSubview(match3View)
        matchesStack.addArrangedSubview(match4View)
        
        addSubview(matchesStack)
    }

    override func styleViews() {
        matchesStack.axis = .vertical
    }
    
    override func setupConstraints() {
        self.snp.makeConstraints() {
            $0.bottom.equalTo(matchesStack.snp.bottom)
        }
        
        leagueHeader.snp.makeConstraints() {
            $0.top.leading.trailing.equalToSuperview()
        }
        
        matchesStack.snp.makeConstraints() {
            $0.top.equalTo(leagueHeader.snp.bottom)
            $0.leading.trailing.equalToSuperview()
        }
    }

}
