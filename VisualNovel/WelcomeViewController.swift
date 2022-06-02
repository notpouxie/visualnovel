//
//  WelcomeViewController.swift
//  VisualNovel
//
//  Created by Alexander on 02.06.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let curViewID = self .restorationIdentifier
        GameSettings.curPage = curViewID
        
        let username = GameSettings.userName ?? ""
        welcomeLabel.text = "Отлично, " + username + "! Чем займемся?"
        
    }
    
}
