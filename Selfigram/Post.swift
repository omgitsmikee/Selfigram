//
//  Post.swift
//  Selfigram
//
//  Created by Michael Mak on 2016-09-01.
//  Copyright © 2016 Michael Mak. All rights reserved.
//

import Foundation
import UIKit

class Post {
    let image: UIImage
    let user: User
    let comment: String
    
    init (image: UIImage, user: User, comment: String) {
        self.image = image
        self.user = user
        self.comment = comment
    }
}