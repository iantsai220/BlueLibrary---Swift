//
//  AlbumExtensions.swift
//  BlueLibrarySwift
//
//  Created by Ian Tsai on 2015-08-18.
//  Copyright (c) 2015 Raywenderlich. All rights reserved.
//

import Foundation

extension Album {
    func ae_TableRepresentation() -> (title: [String], values: [String]) {
        return (["Artist", "Album", "Genre", "Year"], [artist, title, genre, year])
    }
}
