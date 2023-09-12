//
//  FouthVC.swift
//  HW14
//
//  Created by Apple on 22.08.23.
//

import UIKit

class FouthVC: UIViewController {

    var dataString: String?
    
    
    @IBOutlet weak var labelTex: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTex.text = dataString
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindToFirstVC", sender: nil)
    }
    
}
