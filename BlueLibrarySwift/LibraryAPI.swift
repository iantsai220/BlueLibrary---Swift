//
//  LibraryAPI.swift
//  BlueLibrarySwift
//
//  Created by Ian Tsai on 2015-08-17.
//  Copyright (c) 2015 Raywenderlich. All rights reserved.
//

import UIKit

class LibraryAPI: NSObject {
    
    class var sharedInstance: LibraryAPI {
        
        struct Singleton {
            static let instance = LibraryAPI()
        }
        
        return Singleton.instance
    }
   
}
