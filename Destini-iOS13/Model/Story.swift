//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
import Foundation

struct Story {
    var id: Int
    var title: String
    var choices: [Choice]
}

struct Choice {
    var choiceTitle: String
    var nextStory: Int
}
