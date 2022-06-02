//
//  GameSettings.swift
//  VisualNovel
//
//  Created by Alexander on 02.06.2022.
//

import Foundation

final class GameSettings{
    private enum SettingsKey:String{
        case userName
        case curPageID
    }
    static var userName:String!{
        get{
            return UserDefaults.standard.string(forKey: SettingsKey.userName.rawValue)
        }
        set{
            let defaults = UserDefaults.standard
            let key = SettingsKey.userName.rawValue
            defaults.set(newValue, forKey: key)
        }
    }
    static var curPage:String!{
        get{
            return UserDefaults.standard.string(forKey: SettingsKey.curPageID.rawValue)
        }
        set{
            let defaults = UserDefaults.standard
            let key = SettingsKey.curPageID.rawValue
            defaults.set(newValue,forKey: key)
        }
    }
}
