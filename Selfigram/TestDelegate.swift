//
//  TestDelegate.swift
//  Selfigram
//
//  Created by Michael Mak on 2016-09-15.
//  Copyright © 2016 Michael Mak. All rights reserved.
//

import UIKit

class TestDelegate: NSObject {
    func viewDidLoad()
    {
        //Show camera screen
        
        //Call delegate and tell them we are done
        delegate?.didFinishPickingMediaWithInfo(info)
    }
}
