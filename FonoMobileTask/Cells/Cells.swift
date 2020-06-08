//
//  Cells.swift
//  SpreadsheetView
//
//  Created by Kishikawa Katsumi on 5/8/17.
//  Copyright © 2017 Kishikawa Katsumi. All rights reserved.
//

import UIKit
import SpreadsheetView



class ScheduleCell: Cell {
    let label = UILabel()
    var color: UIColor = .clear {
        didSet {
            backgroundView?.backgroundColor = color
        }
    }

    override var frame: CGRect {
        didSet {
            label.frame = bounds.insetBy(dx: 4, dy: 0)
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundView = UIView()

        label.frame = bounds
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textAlignment = .center

        contentView.addSubview(label)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
