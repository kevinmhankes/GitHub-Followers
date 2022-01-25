//
//  UIView+Ext.swift
//  Github
//
//  Created by Kevin Hankes on 1/24/22.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
