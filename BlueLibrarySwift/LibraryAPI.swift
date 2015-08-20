//
//  LibraryAPI.swift
//  BlueLibrarySwift
//
//  Created by Ian Tsai on 2015-08-17.
//  Copyright (c) 2015 Raywenderlich. All rights reserved.
//

import UIKit

class LibraryAPI: NSObject {
    
    private let persistencyManager: PersistencyManager
    private let httpClient: HTTPClient
    private let isOnlne: Bool
    
    class var sharedInstance: LibraryAPI {
        
        struct Singleton {
            static let instance = LibraryAPI()
        }
        
        return Singleton.instance
    }
    
    override init() {
        persistencyManager =  PersistencyManager()
        httpClient = HTTPClient()
        isOnlne = false
        
        super.init()
    }
    
    func getAlbum() -> [Album] {
        return persistencyManager.getAlbum()
    }
    
    func addAlbum(album: Album, index: Int) {
        persistencyManager.addAlbum(album, index: index)
        
        if isOnlne {
            httpClient.postRequest("/api/addAlbum", body: "\(index)")
        }
    }
    
    func deleteAlbum(index: Int) {
        persistencyManager.deleteAlbumAtIndex(index)
        if isOnlne {
            httpClient.postRequest("/api/deleteAlbum", body: "\(index)")
        }
    }
   
}
