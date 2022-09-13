//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    var currentStory = 0
    
    var endChoices = [Choice]()
        
    var story = [Story]()
    
    init() {
        endChoices = [Choice(choiceTitle: "The", nextStory: 0), Choice(choiceTitle: "End", nextStory: 0)]
        story =  [
            Story(id: 0, title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide-brimmed hat and soulless eyes opens the passenger door for you and says: \"Need a ride, boy?\".", choices: [Choice(choiceTitle: "I'll hop in. Thanks for the help", nextStory: 2),
                                                                                              Choice(choiceTitle: "Well, I don't have many options. Better ask him if he's a murderer", nextStory: 1)]),
            Story(id: 1, title: "He nods slowly, unphased by the question.", choices: [Choice(choiceTitle: "At least he's honest, I'll Climb in.", nextStory: 2),
                                                                                       Choice(choiceTitle: "Wait, I know how to change a tire!", nextStory: 3)]),
            Story(id: 2, title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glove box. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", choices: [Choice(choiceTitle: "I love Elton John! Hand him the cassette tape", nextStory: 5),
                                                                                         Choice(choiceTitle: "It's him or me. Take the knife and stab him", nextStory: 4)]),
            Story(id: 3, title: "What? Such a cop-out! Did you know accidental traffic accidents are the second leading cause of accidental death for most adult age groups?", choices: endChoices),
            Story(id: 4, title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
                  choices: endChoices),
            Story(id: 5, title: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"",
                  choices: endChoices),
            Story(id: 6, title: "The End?", choices: endChoices)
        ]
    }
    
    func getCurrentStory() -> Story {
        return story.first(where: {$0.id == currentStory})!
    }
}
