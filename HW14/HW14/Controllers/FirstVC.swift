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
    
    @IBAction func goTo4withoutSegue() {
        let storyboard = UIStoryboard(name: "Second", bundle: nil)
        guard let fouthVC = storyboard.instantiateViewController(withIdentifier: "FouthVC") as? FouthVC else { return}
        fouthVC.navigationItem.title = "Fouth VC"
        fouthVC.dataString = "Hello from first VC"
        
        present(fouthVC, animated: true)

    }
    
    
    @IBAction func unwindToFirstVC(_ unwindSegue: UIStoryboardSegue) {
        if let fouthVC = unwindSegue.source as? FouthVC {
            labelTex.text = fouthVC.dataString
        }
        // Use data from the view controller which initiated the unwind segue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gooToSecVC",
           let secondVC = segue.destination as? SecondVC,
           let dataString = sender as? String
        {
            secondVC.dataString = dataString
            secondVC.firstVC = self
        } else if segue.identifier == "goToFourthVC",
                  let fouthVC = segue.destination as? FouthVC
            {
                   fouthVC.dataString = "Hello from first VC"
            }
    }
}
