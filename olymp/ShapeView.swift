//
//  ShapeView.swift
//  olymp
//
//  Created by Mikhail Seregin on 12.11.2017.
//  Copyright © 2017 Mikhail Seregin. All rights reserved.
//

import UIKit

class ShapeView: UIView {

    var radius: CGFloat = 25
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        bounds.size = CGSize(width: radius * 2, height: radius * 2)
        backgroundColor = UIColor.blue
        layer.cornerRadius = radius

    }

}
