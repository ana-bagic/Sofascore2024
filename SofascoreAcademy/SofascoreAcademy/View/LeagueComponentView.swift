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
    
    let leagueHeaderView: LeagueHeaderView
    let matchesStackView: UIStackView = UIStackView()
    
    init(league: League, matches: Array<Match>) {
        leagueHeaderView = LeagueHeaderView(league: league)
        for match in matches {
            matchesStackView.addArrangedSubview(MatchView(match: match))
        }
        
        super.init()
    }
    
    override func addViews() {
        addSubview(leagueHeaderView)
        addSubview(matchesStackView)
    }

    override func styleViews() {
        matchesStackView.axis = .vertical
    }
    
    override func setupConstraints() {
        leagueHeaderView.snp.makeConstraints() {
            $0.top.leading.trailing.equalToSuperview()
        }
        
        matchesStackView.snp.makeConstraints() {
            $0.top.equalTo(leagueHeaderView.snp.bottom)
            $0.leading.trailing.bottom.equalToSuperview()
        }
    }

}
