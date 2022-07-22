//
//  CustomButtomClass.swift
//  learnZero
//
//  Created by Алексей Грачев on 22.07.2022.
//

import Foundation
import UIKit

class CustomButton: UIButton {
    override func endTracking(_ touch: UITouch?,
                              with event: UIEvent?) {
        
        super .endTracking(touch, with: event)
        
        UIView.animateKeyframes(withDuration: 0.4,
                                delay: 0.0,
                                options: [.beginFromCurrentState,
                                          .allowUserInteraction],
                                animations: {
                                    self.backgroundColor = self.backgroundColor?.withAlphaComponent(self.isHighlighted ? 0.3 : 1)
                                })
    }
}
