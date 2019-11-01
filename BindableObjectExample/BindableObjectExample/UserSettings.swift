//
//  UserSettings.swift
//  BindableObjectExample
//
//  Created by Fernando Gomes on 01/11/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import Foundation


class UserSetting: ObservableObject {
    @Published var score: Int
    
    init() {
        self.score = 0
    }
}
