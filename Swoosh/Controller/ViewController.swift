//
//  ViewController.swift
//  Swoosh
//
//  Created by Fabio Quintanilha on 12/3/17.
//  Copyright © 2017 Fabio Quintanilha. All rights reserved.
//

import UIKit

//Welcome VC
class ViewController: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToDesiredLeague", sender: self)
        
    }
    
    
    //This function is called when the back button in the next view controller is clicked. When the league vc is clicked
    @IBAction func unwindFromSkills(unwindSegue: UIStoryboardSegue) {
        
    }
    
}

