//
//  User.swift
//  Selfigram
//
//  Created by Michael Mak on 2016-09-01.
//  Copyright © 2016 Michael Mak. All rights reserved.
//

import Foundation
import UIKit

class User {
    let username: String
    let profileImage : UIImage
    
    init(username: String, profileImage: UIImage) {
        self.username = username
        self.profileImage = profileImage
    }
    
}