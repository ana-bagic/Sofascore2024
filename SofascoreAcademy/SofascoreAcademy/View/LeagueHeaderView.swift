//
//  LeagueHeaderView.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import UIKit
import SofaAcademic

class LeagueHeaderView: BaseView {
    
    private let leagueLogoImageView: UIImageView = UIImageView()
    private let countryLabel: UILabel = UILabel()
    private let leagueNameLabel: UILabel = UILabel()
    private let arrowImageView: UIImageView = UIImageView(image: .arrow)
    private let horizontalStackView: UIStackView = UIStackView()
    
    override init() {
        super.init()
    }
    
    func setupData(league: League) {
        leagueLogoImageView.image = league.logoImage
        countryLabel.text = league.countryName
        leagueNameLabel.text = league.leagueName
    }
    
    override func addViews() {
        horizontalStackView.addArrangedSubview(countryLabel)
        horizontalStackView.addArrangedSubview(arrowImageView)
        horizontalStackView.addArrangedSubview(leagueNameLabel)
        
        addSubview(leagueLogoImageView)
        addSubview(horizontalStackView)
    }

    override func styleViews() {
        horizontalStackView.alignment = .center
        
        countryLabel.font = .headline3
        countryLabel.textColor = .onSurfaceLv1

        leagueNameLabel.font = .headline3
        leagueNameLabel.textColor = .onSurfaceLv2
        
        arrowImageView.tintColor = .onSurfaceLv2
    }
    
    override func setupConstraints() {
        leagueLogoImageView.snp.makeConstraints() {
            $0.top.bottom.equalToSuperview().inset(12)
            $0.leading.equalToSuperview().inset(16)
            $0.size.equalTo(32)
        }
        
        horizontalStackView.snp.makeConstraints() {
            $0.top.bottom.equalToSuperview().inset(16)
            $0.trailing.lessThanOrEqualToSuperview().inset(16)
            $0.leading.equalTo(leagueLogoImageView.snp.trailing).offset(32)
            $0.centerY.equalTo(leagueLogoImageView)
        }
        
        arrowImageView.snp.makeConstraints() {
            $0.size.equalTo(24)
        }
    }

}
