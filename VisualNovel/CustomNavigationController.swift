//
//  CustomNavigationController.swift
//  VisualNovel
//
//  Created by Alexander on 02.06.2022.
//

import Foundation
import UIKit
class CustomNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let curViewID = self .restorationIdentifier
        GameSettings.curPage = curViewID
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let curView = self .visibleViewController
        let curViewID = curView?.restorationIdentifier
        GameSettings.curPage = curViewID
    }
}
