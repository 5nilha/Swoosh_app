//
//  BorderButton.swift
//  Swoosh
//
//  Created by Fabio Quintanilha on 12/3/17.
//  Copyright © 2017 Fabio Quintanilha. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
