//
//  InterfaceController.swift
//  Test Watch App WatchKit Extension
//
//  Created by Martin Kelly on 10/10/2015.
//  Copyright © 2015 Martin Kelly. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
                super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        print("in watch init")
        events.append(Event(dataDictionary: ["teamColor": "Red", "Matchup": "Something"]))
        events.append(Event(dataDictionary: ["teamColor": "Red", "Matchup": "Something"]))
        events.append(Event(dataDictionary: ["teamColor": "Red", "Matchup": "Something"]))
        events.append(Event(dataDictionary: ["teamColor": "Red", "Matchup": "Something"]))
        events.append(Event(dataDictionary: ["teamColor": "Red", "Matchup": "Something"]))
        
        self.reloadTable()

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBOutlet weak var myTable: WKInterfaceTable!
    
    var events = [Event]()
    
    override init() {
        super.init()
        
            }
    
    func reloadTable() {
        // 1
        print("count events: \(events.count)")
        myTable.setNumberOfRows(self.events.count, withRowType: "rows")
        
        for (index, event) in events.enumerate() {
            // 2
            if let row = myTable.rowControllerAtIndex(index) as? TableRowController {
                // 3
                print(event.teamColor)
                row.label.setText(event.teamColor)
            } else {
                print("no row: \(myTable)")
            }
        }
    }


}
