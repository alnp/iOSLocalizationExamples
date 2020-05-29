//
//  ViewController.swift
//  L10n101
//
//  Created by Alessandra Pereira on 29/05/20.
//  Copyright © 2020 Alessandra Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UIView()
        view.backgroundColor = .white
        
        LanguageStrings.setDialect(.neutral)

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 100, width: 200, height: 20)
        label.text = LanguageStrings.saudar
        label.textColor = .black
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label2.text = LocalizedStrings.programGreeting
        label2.textColor = .black
        
        view.addSubview(label)
        view.addSubview(label2)
        self.view = view
    }
}
