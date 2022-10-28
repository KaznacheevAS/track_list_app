//
//  DataManagers+Structura.swift
//  appListTack
//
//  Created by Anton Kaznacheev on 28.10.2022.
//

import Foundation

enum caseImg{
    case phone, tray
}

struct DataManager {
    let name: String
    let ferstName: String
    let phone: Int
    
    var descriptor: String {
        "\(name) \(ferstName)"
    }
}

extension DataManager {
    static func detDataManager()->[DataManager] {
        [
            DataManager(name: "Anna", ferstName: "Fuller", phone: 89374328585),
            DataManager(name: "Anton", ferstName: "Kaznacheev", phone: +79181410848)
        ]
    }
}
