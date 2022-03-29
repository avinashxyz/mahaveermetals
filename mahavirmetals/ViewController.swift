//
//  ViewController.swift
//  mahavirmetals
//
//  Created by AVINASH on 29/03/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var productBtnOutlet: UIButton!
    
    @IBOutlet weak var ContactUsBtnOutlet: UIButton!
    
    @IBOutlet weak var aboutEnterpriseBtnOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productBtnOutlet.layer.borderWidth = 1
        productBtnOutlet.layer.borderColor = UIColor.black.cgColor
        productBtnOutlet.backgroundColor = UIColor.clear
       
        productBtnOutlet.layer.cornerRadius = 40/2
        productBtnOutlet.clipsToBounds = true
        
        ContactUsBtnOutlet.layer.borderWidth = 1
        ContactUsBtnOutlet.layer.borderColor = UIColor.black.cgColor
        ContactUsBtnOutlet.backgroundColor = UIColor.clear
        
        ContactUsBtnOutlet.layer.cornerRadius = 40/2
        ContactUsBtnOutlet.clipsToBounds = true
        
        aboutEnterpriseBtnOutlet.layer.borderWidth = 1
        aboutEnterpriseBtnOutlet.layer.borderColor = UIColor.black.cgColor
        aboutEnterpriseBtnOutlet.backgroundColor = UIColor.clear
        
        aboutEnterpriseBtnOutlet.layer.cornerRadius = 40/2
        aboutEnterpriseBtnOutlet.clipsToBounds = true
        
        
        
        // Do any additional setup after loading the view.
    }


}

