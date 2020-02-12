//
//  StoryModel.swift
//  Inevitability
//
//  Represents the business logic of the application as it related to Story
//  objects.
//
//  Created by Darren Rambaud on 02/09/2020.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import Foundation

struct StoryModel {
    
    var stories = [
        Story(
            title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            choice0: "I'll hop in. Thanks for the help!", choice1: "Better ask him if he's a murderer first.", dest0: 2, dest1: 1
        ),
        Story(
            title: "He nods slowly, unfazed by the question.",
            choice0: "At least he's honest. I'll climb in.", choice1: "Wait, I know how to change a tire.", dest0: 2, dest1: 3
        ),
        Story(
            title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            choice0: "I love Elton John! Hand him the cassette tape.", choice1: "It's him or me! You take the knife and stab him.", dest0: 5, dest1: 4
        ),
        Story(
            title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            choice0: "The", choice1: "End", dest0: 0, dest1: 0
        ),
        Story(
            title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            choice0: "The", choice1: "End", dest0: 0, dest1: 0
        ),
        Story(
            title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            choice0: "The", choice1: "End", dest0: 0, dest1: 0
        )
    ]
    
    var currentDestination: Int
    
    init() {
        self.currentDestination = 0
    }
    
    mutating func getNextStoryFrom(decision: String) -> Story {
        let curr = getCurrentStory()
        
        currentDestination = decision == curr.choice0 ?
            curr.dest0 : curr.dest1
        
        return getCurrentStory()
    }
    
    func getCurrentStory() -> Story {
        return stories[currentDestination]
    }
    
    
}
