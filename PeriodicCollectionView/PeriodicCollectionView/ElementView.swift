//
//  ElementView.swift
//  PeriodicCollectionView
//
//  Created by Sabrina Ip on 12/21/16.
//  Copyright © 2016 Sabrina. All rights reserved.
//

import UIKit

class ElementView: UIView {

    @IBOutlet weak var elementNumberLabel: UILabel!
    @IBOutlet weak var elementSymbolLabel: UILabel!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    //MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if let view = Bundle.main.loadNibNamed("ElementView", owner: self, options: nil)?.first as? UIView {
            self.addSubview(view)
            view.frame = self.bounds
        }
    }

}
