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
    var image: UIImage?
    let imageURL: NSURL?
    let user: User
    let comment: String
    
    init (imageURL:NSURL?, user: User, comment: String) {
        self.imageURL = imageURL
        self.user = user
        self.comment = comment
    }
    
    convenience init(image:UIImage?, user: User, comment: String ) {
        
        self.init(imageURL: nil, user: user, comment: comment)
        self.image = image
        
    }
    
    
}