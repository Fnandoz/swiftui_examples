 //
//  NetworkingManager.swift
//  Fetching Music
//
//  Created by Fernando Gomes on 26/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import Foundation
import SwiftUI
import Combine
 
class NetworkingManager: ObservableObject {    
    @Published var songs = [Song]()
    
    init(count: Int = 10) {
        let urlString = "https://rss.itunes.apple.com/api/v1/br/apple-music/coming-soon/all/\(count)/explicit.json"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let data = data else { return }
            
            if error != nil {
                NSLog(error.debugDescription)
            }
            
            let songResult = try! JSONDecoder().decode(SongResult.self, from: data)
            
            DispatchQueue.main.async {
                self.songs = songResult.feed.results
            }
        }.resume()
        
    }
}
