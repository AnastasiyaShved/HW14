//
//  SecondVC.swift
//  HW14
//
//  Created by Apple on 22.08.23.
//

import UIKit

class SecondVC: UIViewController {
    
    var dataString: String?
    
    weak var firstVC: FirstVC?
    
    @IBOutlet weak var labelTex: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTex.text = dataString
    }
    
    @IBAction func closeAction(_ sender: UIButton) {
        firstVC?.navigationItem.title = "Hello from second VC"
       dismiss(animated: true)
    }

}
