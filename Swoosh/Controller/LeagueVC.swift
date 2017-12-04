//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Fabio Quintanilha on 12/3/17.
//  Copyright © 2017 Fabio Quintanilha. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player : Player!
   
    @IBOutlet weak var mensButton: BorderButton!
    @IBOutlet weak var womensButton: BorderButton!
    @IBOutlet weak var coedButtons: BorderButton!
    @IBOutlet weak var nextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.setTitleColor(UIColor.gray, for: .normal)
        nextButton.backgroundColor = #colorLiteral(red: 0.3394598961, green: 0.3410363793, blue: 0.3448704481, alpha: 0.6564105308)
        
        nextButton.isEnabled = false
        
        //Creates a new player initalizing a struct
        player = Player()

    }

    @IBAction func onMensTapped(_ sender: Any) {
        
        selectLeague(leagueType: "Mens")
        mensButton.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.564453125)
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        
        selectLeague(leagueType: "Womens")
        womensButton.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.5633561644)
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
       
        selectLeague(leagueType: "Co-ed")
        coedButtons.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.5589683219)
    }
    
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        
        buttonsUIUpdate()
        nextButton.isEnabled = true
        nextButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4186376284)
        nextButton.setTitleColor(UIColor.white, for: .normal)
    }
    
    
    func buttonsUIUpdate() {
        mensButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4186376284)
        womensButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4186376284)
        coedButtons.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4186376284)
    }
    
    
    @IBAction func nextBtnTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToSkillVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.description as? SkillVC {
            skillVC.player = self.player
        }
    }
}
