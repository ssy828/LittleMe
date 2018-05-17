//
//  CustomLable.swift
//  MoneyMoney
//
//  Created by SSY on 2018. 5. 17..
//  Copyright © 2018년 LittleMe. All rights reserved.

import UIKit

class CustomLabel: UILabel {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.cornerRadius = 10
        // 하위 레이어들이 레이어의 경계까지 잘리는 지 여부 나타냄!
        // true가 아니면 적용불가.
        self.layer.masksToBounds = true
    }
}
