//
//  HeroCell.swift
//  Marvel-app
//
//  Created by Fernando Augusto de Marins on 14/06/17.
//  Copyright © 2017 Fernando Augusto de Marins. All rights reserved.
//

import UIKit

class HeroCell: UITableViewCell {
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var heroName: UILabel!
    
    var thumbnail: UIImage? {
        didSet {
            heroImage.image = thumbnail
        }
    }
    
    var hero: String? {
        didSet {
            heroName.text = hero
        }
    }
}
