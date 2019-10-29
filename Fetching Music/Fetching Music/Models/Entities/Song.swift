//
//  Song.swift
//  Fetching Music
//
//  Created by Fernando Gomes on 26/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

struct Song: Decodable & Identifiable {
    var id: String
    var artistName: String
    var releaseDate: String
    var name: String
    var kind: String
//    var copyright: String
//    var artistId: String
//    var contentAdvisoryRating: String
//    var artistUrl: String
//    var artworkUrl100: String
}

struct SongFeed: Decodable {
    var results: [Song]
}

struct SongResult: Decodable {
    var feed: SongFeed
}
