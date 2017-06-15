//
//  Heroes.swift
//  Marvel-app
//
//  Created by Fernando Augusto de Marins on 14/06/17.
//  Copyright © 2017 Fernando Augusto de Marins. All rights reserved.
//

import Foundation

class Heroes: NSObject {
    let heroes: [Hero]
    
    init(heroes: [Hero]) {
        self.heroes = heroes
    }
}
