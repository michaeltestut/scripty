//
//  UICollectionReusableView.swift
//  Scripty
//
//  Created by Michael Testut on 2/3/23.
//

import Foundation
import SwiftUI

extension UICollectionReusableView {
    override open var backgroundColor: UIColor? {
        get { .clear }
        set { }

        // default separators use same color as background
        // so to have it same but new (say red) it can be
        // used as below, otherwise we just need custom separators
        //
        // set { super.backgroundColor = .red }

    }
}

