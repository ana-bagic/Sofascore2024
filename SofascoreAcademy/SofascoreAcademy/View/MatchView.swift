//
//  MatchView.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import Foundation
import SofaAcademic
import UIKit

class MatchView: BaseView {
    
    var matchModel: Match
    
    let timeCellView: UIView = UIView()
    let time: UILabel = UILabel()
    let minutes: UILabel = UILabel()
    
    let divider: UIView = UIView()
    
    let team1: UIView = UIView()
    let team1Logo: UIImageView = UIImageView()
    let team1Name: UILabel = UILabel()
    
    let team2: UIView = UIView()
    let team2Logo: UIImageView = UIImageView()
    let team2Name: UILabel = UILabel()
    
    let team1Score: UILabel = UILabel()
    let team2Score: UILabel = UILabel()
    
    init(match: Match) {
        matchModel = match
        super.init()
    }
    
    override func addViews() {
        timeCellView.addSubview(time)
        timeCellView.addSubview(minutes)
        
        addSubview(timeCellView)
        addSubview(divider)
        
        team1.addSubview(team1Logo)
        team1.addSubview(team1Name)
        addSubview(team1)
        
        team2.addSubview(team2Logo)
        team2.addSubview(team2Name)
        addSubview(team2)
        
        addSubview(team1Score)
        addSubview(team2Score)
    }

    override func styleViews() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        time.text = dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(matchModel.startTimestamp)))
        time.font = .micro
        time.textColor = .onSurfaceLv2
        time.textAlignment = .center
        
        divider.backgroundColor = .onSurfaceLv4
        
        team1Logo.image = matchModel.homeTeam.logoImage
        team2Logo.image = matchModel.awayTeam.logoImage
        
        minutes.font = .micro
        minutes.textColor = .onSurfaceLv2
        minutes.textAlignment = .center
        
        team1Name.text = matchModel.homeTeam.teamName
        team1Name.font = .body
        team1Name.textColor = .onSurfaceLv1
        
        team2Name.text = matchModel.awayTeam.teamName
        team2Name.font = .body
        team2Name.textColor = .onSurfaceLv1
        
        team1Score.font = .body
        team1Score.textColor = .onSurfaceLv1
        team1Score.textAlignment = .right
        
        team2Score.font = .body
        team2Score.textColor = .onSurfaceLv1
        team2Score.textAlignment = .right
        switch matchModel.matchStatus {
        case .notStarted:
            minutes.text = "-"
        case .inProgress:
            guard let minute = matchModel.currentMinute else {
                return
            }
            minutes.text = String(minute) + "'"
            minutes.textColor = .specificLive
            
            guard let score1 = matchModel.homeTeamScore else {
                return
            }
            guard let score2 = matchModel.awayTeamScore else {
                return
            }
            
            team1Score.text = String(score1)
            team2Score.text = String(score2)
            
            team1Score.textColor = .specificLive
            team2Score.textColor = .specificLive
        case .finished:
            minutes.text = Strings.finishedMatch
            
            guard let score1 = matchModel.homeTeamScore else {
                return
            }
            guard let score2 = matchModel.awayTeamScore else {
                return
            }
            
            team1Score.text = String(score1)
            team2Score.text = String(score2)
            
            if score1 < score2 || score1 == score2 {
                team1Name.textColor = .onSurfaceLv2
                team1Score.textColor = .onSurfaceLv2
            }
            if score1 > score2 || score1 == score2 {
                team2Name.textColor = .onSurfaceLv2
                team2Score.textColor = .onSurfaceLv2
            }
        }
    }
    
    override func setupConstraints() {
        self.snp.makeConstraints() {
            $0.height.equalTo(56)
        }
        
        timeCellView.snp.makeConstraints() {
            $0.top.leading.equalToSuperview()
            $0.width.equalTo(64)
            $0.height.equalTo(56)
        }
        
        time.snp.makeConstraints() {
            $0.top.equalToSuperview().inset(10)
            $0.leading.trailing.equalToSuperview().inset(4)
        }
        
        minutes.snp.makeConstraints() {
            $0.top.equalToSuperview().inset(30)
            $0.leading.trailing.equalToSuperview().inset(4)
        }
        
        divider.snp.makeConstraints() {
            $0.top.equalToSuperview().inset(8)
            $0.leading.equalToSuperview().inset(63)
            $0.width.equalTo(1)
            $0.height.equalTo(40)
        }
        
        team1.snp.makeConstraints() {
            $0.top.equalToSuperview().inset(10)
            $0.leading.equalToSuperview().inset(80)
            $0.trailing.equalToSuperview().inset(64)
        }
        
        team1Logo.snp.makeConstraints() {
            $0.top.leading.equalToSuperview()
            $0.size.equalTo(16)
        }
        
        team1Name.snp.makeConstraints() {
            $0.leading.equalTo(team1Logo.snp.trailing).offset(8)
            $0.top.trailing.equalToSuperview()
        }
        
        team2.snp.makeConstraints() {
            $0.bottom.equalToSuperview().inset(10)
            $0.leading.equalToSuperview().inset(80)
            $0.trailing.equalToSuperview().inset(64)
        }
        
        team2Logo.snp.makeConstraints() {
            $0.bottom.leading.equalToSuperview()
            $0.size.equalTo(16)
        }
        
        team2Name.snp.makeConstraints() {
            $0.leading.equalTo(team2Logo.snp.trailing).offset(8)
            $0.bottom.trailing.equalToSuperview()
        }
        
        team1Score.snp.makeConstraints() {
            $0.top.equalToSuperview().inset(10)
            $0.trailing.equalToSuperview().inset(16)
            $0.width.equalTo(32)
        }
        
        team2Score.snp.makeConstraints() {
            $0.bottom.equalToSuperview().inset(10)
            $0.trailing.equalToSuperview().inset(16)
            $0.width.equalTo(32)
        }
    }
}
