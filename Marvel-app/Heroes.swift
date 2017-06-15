//
//  Heroes.swift
//  Marvel-app
//
//  Created by Fernando Augusto de Marins on 14/06/17.
//  Copyright © 2017 Fernando Augusto de Marins. All rights reserved.
//

import UIKit

class Heroes: NSObject {
    let heroes: [Hero]
    
    init(heroes: [Hero]) {
        self.heroes = heroes
    }
}

extension Heroes: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: HeroCell.self)) as! HeroCell
        
        let hero = heroes[indexPath.row]
        
        cell.heroName.text = hero.heroName
        cell.thumbnail = hero.heroImage
        
        return cell
    }
}
