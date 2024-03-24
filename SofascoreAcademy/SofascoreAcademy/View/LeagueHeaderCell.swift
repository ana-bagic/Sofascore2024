//
//  LeagueHeaderCell.swift
//  SofascoreAcademy
//
//  Created by Akademija on 24.03.2024..
//

import UIKit
import SofaAcademic

class LeagueHeaderCell: UICollectionReusableView {
    
    private let leagueHeaderView: LeagueHeaderView = LeagueHeaderView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupData(league: League) {
        leagueHeaderView.setupData(league: league)
    }
}

extension LeagueHeaderCell: BaseViewProtocol {
    
    func addViews() {
        addSubview(leagueHeaderView)
    }
    
    func setupConstraints() {
        leagueHeaderView.snp.makeConstraints() {
            $0.edges.equalToSuperview()
        }
    }
    
}
