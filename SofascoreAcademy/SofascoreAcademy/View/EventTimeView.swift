//
//  EventTimeView.swift
//  SofascoreAcademy
//
//  Created by Akademija on 22.03.2024..
//

import UIKit
import SofaAcademic

class EventTimeView: BaseView {
    
    private let startTimeLabel: UILabel = UILabel()
    private let currentMinuteLabel: UILabel = UILabel()
    private let divider: UIView = UIView()
    
    override init() {
        super.init()
    }
    
    func setupData(eventTimeViewModel: EventTimeViewModel) {
        startTimeLabel.text = eventTimeViewModel.startTime
        currentMinuteLabel.text = eventTimeViewModel.currentMinute
        currentMinuteLabel.textColor = eventTimeViewModel.currentMinuteColor
    }
    
    override func addViews() {
        addSubview(startTimeLabel)
        addSubview(currentMinuteLabel)
        addSubview(divider)
    }

    override func styleViews() {
        startTimeLabel.font = .micro
        startTimeLabel.textColor = .onSurfaceLv2
        startTimeLabel.textAlignment = .center
        
        currentMinuteLabel.font = .micro
        currentMinuteLabel.textAlignment = .center
        
        divider.backgroundColor = .onSurfaceLv4
    }
    
    override func setupConstraints() {
        startTimeLabel.snp.makeConstraints() {
            $0.top.equalToSuperview().inset(10)
            $0.leading.trailing.equalToSuperview().inset(4)
        }
        
        currentMinuteLabel.snp.makeConstraints() {
            $0.bottom.equalToSuperview().inset(10)
            $0.leading.trailing.equalToSuperview().inset(4)
        }
        
        divider.snp.makeConstraints() {
            $0.top.bottom.equalToSuperview().inset(8)
            $0.trailing.equalToSuperview()
            $0.width.equalTo(1)
        }
    }
}
