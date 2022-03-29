//
//  ContactUsXib.swift
//  mahavirmetals
//
//  Created by AVINASH on 29/03/22.
//

import UIKit

class ContactUsXib: UIView {
    
    
    
    @IBOutlet var containerView: UIView!
    

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
        Bundle.main.loadNibNamed("ContactUsXib", owner: self, options: nil)![0] as! UIView
        
   
        
       // addSubview(myView)
     //  addSubview(containerView)
        
       containerView.frame = self.bounds
        
    containerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
      
   
    }

}
