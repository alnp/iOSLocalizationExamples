//
//  LocalizableStrings.swift
//  L10n101
//
//  Created by Alessandra Pereira on 29/05/20.
//  Copyright © 2020 Alessandra Pereira. All rights reserved.
//

import Foundation

public struct LocalizedStrings {
    
    private static let tableName = "Localizable"
    private static let bundleIdentifier = "br.ufpe.cin.academy.L10n101"
    
    public static let programGreeting = localized(forKey: "program-greeting")
    
}

private extension LocalizedStrings {
    static func localized(forKey key: String) -> String {
        let bundle = Bundle(identifier: bundleIdentifier)
        return NSLocalizedString(key,
                                 tableName: tableName,
                                 bundle: bundle!,
                                 value: "",
                                 comment: "")
    }
}
