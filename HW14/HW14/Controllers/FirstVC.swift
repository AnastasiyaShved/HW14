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
    
    
    @IBAction func goTo3VC(_ sender: UIButton) {
        let vc = ThirdVC(nibName: "ThirdVC", bundle: nil)
        vc.dataString = "Hello from first VC"
        vc.navigationItem.title = "XIB VC"
        
        navigationController?.pushViewController(vc, animated: true)
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
