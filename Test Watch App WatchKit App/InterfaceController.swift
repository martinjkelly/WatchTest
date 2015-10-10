//
//  InterfaceController.swift
//  Test Watch App
//
//  Created by Martin Kelly on 10/10/2015.
//  Copyright © 2015 Martin Kelly. All rights reserved.
//

import Foundation
import WatchKit

class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var myTable: WKInterfaceTable!
    
    var events = [Event]()
    
    override init() {
        events.append(Event(dataDictionary: ["TeamColor": "Red", "Matchup": "Something"]))
        events.append(Event(dataDictionary: ["TeamColor": "Red", "Matchup": "Something"]))
        events.append(Event(dataDictionary: ["TeamColor": "Red", "Matchup": "Something"]))
        events.append(Event(dataDictionary: ["TeamColor": "Red", "Matchup": "Something"]))
        events.append(Event(dataDictionary: ["TeamColor": "Red", "Matchup": "Something"]))
    }
    
    func reloadTable() {
        // 1
        myTable.setNumberOfRows(self.events.count, withRowType: "TableRowController")
        
        for (index, event) in events.enumerate() {
            // 2
            if let row = myTable.rowControllerAtIndex(index) as? TableRowController {
                // 3
                row.label.setText(event.teamColor)
            }
        }
    }
    
}