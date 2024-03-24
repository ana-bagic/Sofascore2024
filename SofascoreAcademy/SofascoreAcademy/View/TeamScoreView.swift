//
//  TeamLogoNameView.swift
//  SofascoreAcademy
//
//  Created by Akademija on 21.03.2024..
//

import UIKit
import SofaAcademic

class TeamScoreView: BaseView {
    
    private let teamLogoImageView: UIImageView = UIImageView()
    private let teamNameLabel: UILabel = UILabel()
    private let teamScoreLabel: UILabel = UILabel()
    
    override init() {
        super.init()
    }
    
    func setupData(teamScoreViewModel: TeamScoreViewModel) {
        teamLogoImageView.image = teamScoreViewModel.logoImage
        teamNameLabel.text = teamScoreViewModel.teamName
        teamNameLabel.textColor = teamScoreViewModel.teamNameColor
        teamScoreLabel.text = teamScoreViewModel.teamScore
        teamScoreLabel.textColor = teamScoreViewModel.teamScoreColor
    }
    
    override func addViews() {
        addSubview(teamLogoImageView)
        addSubview(teamNameLabel)
        addSubview(teamScoreLabel)
    }

    override func styleViews() {
        teamNameLabel.font = .body
        
        teamScoreLabel.font = .body
        teamScoreLabel.textAlignment = .right
    }
    
    override func setupConstraints() {
        teamLogoImageView.snp.makeConstraints() {
            $0.top.bottom.leading.equalToSuperview()
            $0.size.equalTo(16)
        }
        
        teamNameLabel.snp.makeConstraints() {
            $0.top.bottom.equalToSuperview()
            $0.leading.equalTo(teamLogoImageView.snp.trailing).offset(8)
        }
        
        teamScoreLabel.snp.makeConstraints() {
            $0.top.bottom.trailing.equalToSuperview()
            $0.leading.equalTo(teamNameLabel.snp.trailing).offset(16)
            $0.width.equalTo(32)
        }
    }
}
