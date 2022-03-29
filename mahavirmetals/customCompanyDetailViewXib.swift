//
//  customCompanyDetailViewXib.swift
//  mahavirmetals
//
//  Created by AVINASH on 29/03/22.
//

import UIKit

class customCompanyDetailViewXib: UIView {

    @IBOutlet var containerView: UIView!
       
       @IBOutlet weak var lblText: UILabel!
       
       override init(frame: CGRect) {
           super.init(frame: frame)
           
           commitInit()
       }
       
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           
           commitInit()
       }
       
       private func commitInit()
       {
           Bundle.main.loadNibNamed("customCompanyDetailViewXib", owner: self, options: nil)
           
           addSubview(containerView)
           
           containerView.frame = self.bounds
           
           containerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
       }

}


