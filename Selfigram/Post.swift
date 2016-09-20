//
//  Post.swift
//  Selfigram
//
//  Created by Michael Mak on 2016-09-01.
//  Copyright © 2016 Michael Mak. All rights reserved.
//

import Foundation
import UIKit
import Parse

class Post: PFObject, PFSubclassing {

    
    @NSManaged var image:PFFile
    @NSManaged var user:PFUser
    @NSManaged var comment:String
    
    
    static func parseClassName() -> String {
        // sets what the table name on Parse will be called
        return "Post"
    }
    
    
    // convenience init method, because it’s building on top of PFObject’s init, rather than overriding it.
    convenience init(image:PFFile, user:PFUser, comment:String){
        // You can name the property you are passing into the function the
        // same name as the class' property. To distinguish the two
        // add "self." to the beginning of the class' property.
        self.init()
        self.image = image
        self.user = user
        self.comment = comment
    }

    
}