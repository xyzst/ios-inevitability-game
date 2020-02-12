//
//  Story.swift
//  Inevitability
//
//  Represents an entity which holds the properties of a story
//
//  Created by Darren Rambaud on 02/09/2020.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import Foundation

struct Story {
    var title: String
    var choice0: String
    var choice1: String
    var dest0: Int
    var dest1: Int
    
    init(title: String, choice0: String, choice1: String, dest0: Int, dest1: Int) {
        self.title = title
        self.choice0 = choice0
        self.choice1 = choice1
        self.dest0 = dest0
        self.dest1 = dest1
    }
}
