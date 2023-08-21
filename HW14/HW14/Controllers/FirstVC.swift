//
//  FirstVC.swift
//  HW14
//
//  Created by Apple on 22.08.23.
//

import UIKit

class FirstVC: UIViewController {

  

    @IBOutlet weak var labelTex: UILabel!
    
    @IBAction func gooToSecVC(_ sender: UIButton) {
        performSegue(withIdentifier: "gooToSecVC", sender: "Hello from first VC")
    }
    
    
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gooToSecVC",
           let secondVC = segue.destination as? SecondVC,
           let dataString = sender as? String {
            secondVC.dataString = dataString
            secondVC.firstVC = self
        }
            
    }
   

}
