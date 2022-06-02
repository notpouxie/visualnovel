//
//  ViewController.swift
//  VisualNovel
//
//  Created by Alexander on 02.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        GameSettings.userName = userName.text
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        let curViewID = self .restorationIdentifier
        GameSettings.curPage = curViewID
    }

}

