//
//  Event.swift
//  Test Watch App
//
//  Created by Martin Kelly on 10/10/2015.
//  Copyright © 2015 Martin Kelly. All rights reserved.
//

import Foundation

class Event {
    var teamColor:String!
    var matchup:String!
    
    init(dataDictionary:[String:String]) {
        teamColor = dataDictionary["teamColor"]
        matchup = dataDictionary["Matchup"]
    }
}
