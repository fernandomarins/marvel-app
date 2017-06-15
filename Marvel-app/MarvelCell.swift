//
//  MarvelCell.swift
//  Marvel-app
//
//  Created by Fernando Augusto de Marins on 14/06/17.
//  Copyright © 2017 Fernando Augusto de Marins. All rights reserved.
//

import UIKit

class MarvelCell: UITableViewCell {
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var heroName: UILabel!
    
    var heroAvatar: String? {
        didSet {
            if let heroAvatar = heroAvatar {
                heroImage.downloadedFrom(link: heroAvatar)
            }
        }
    }
    
    var hero: String? {
        didSet {
            heroName.text = hero
        }
    }
}
