//
//  CustomButtom.swift
//  learnZero
//
//  Created by Алексей Грачев on 20.07.2022.
//

import Foundation
import UIKit
class CustomButton: UIButton {

    var color: UIColor = .black
    let touchDownAlpha: CGFloat = 0.3

    func setup() {
        backgroundColor = .clear
        layer.backgroundColor = color.cgColor

        layer.cornerRadius = 6
        clipsToBounds = true
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

        if let backgroundColor = backgroundColor {
            color = backgroundColor
        }

        setup()
    }
    
    
    convenience init(color: UIColor? = nil, title: String? = nil) {
        self.init(type: .custom)

        if let color = color {
            self.color = color
        }

        if let title = title {
            setTitle(title, for: .normal)
        }

        setup()
    }

    
    
    let button = CustomButton(color: .orange, title: "Button")
    
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                touchDown()
            } else {
                cancelTracking(with: nil)
                touchUp()
            }
        }
    }

    func touchDown() {
    }

    func touchUp() {
    }
    
    
    weak var timer: Timer?

    func stopTimer() {
        timer?.invalidate()
    }

    deinit {
        stopTimer()
    }

    
    
    func touchDownie() {
        stopTimer()

        layer.backgroundColor = color.withAlphaComponent(touchDownAlpha).cgColor
    }

    
    
    let timerStep: TimeInterval = 0.01
    let animateTime: TimeInterval = 0.4
    lazy var alphaStep: CGFloat = {
        return (1 - touchDownAlpha) / CGFloat(animateTime / timerStep)
    }()

    func touchUpper() {
        timer = Timer.scheduledTimer(timeInterval: timerStep,
                                     target: self,
                                     selector: #selector(animation),
                                     userInfo: nil,
                                     repeats: true)
    }

    @objc func animation() {
        guard let backgroundAlpha = layer.backgroundColor?.alpha else {
            stopTimer()

            return
        }

        let newAlpha = backgroundAlpha + alphaStep

        if newAlpha < 1 {
            layer.backgroundColor = color.withAlphaComponent(newAlpha).cgColor
        } else {
            layer.backgroundColor = color.cgColor

            stopTimer()
        }
    }
    
    
    //https://www.pvsm.ru/razrabotka-pod-ios/287975
    
    
    
    
    
    
    
    
    
}


