//
//  LanguageStrings.swift
//  L10n101
//
//  Created by Alessandra Pereira on 29/05/20.
//  Copyright © 2020 Alessandra Pereira. All rights reserved.
//

import Foundation

enum Language: String {
    case neutral = "Neutral"
    case binary = "Non-Neutral"
}

public struct LanguageStrings {
    private static let bundleIdentifier = "br.ufpe.cin.academy.L10n101"
    private static var tableName = Language.neutral
    
    public static let saudar = dialect(forKey: "saudar")
    public static let despedir = dialect(forKey: "despedir")
    
    static func setDialect(_ dialect: Language){
        tableName = dialect
    }
}
private extension LanguageStrings {
    static func dialect(forKey key: String) -> String {
        let bundle = Bundle(identifier: bundleIdentifier)
        return NSLocalizedString(key,
                                 tableName: tableName.rawValue,
                                 bundle: bundle!,
                                 value: "",
                                 comment: "")
    }
}


