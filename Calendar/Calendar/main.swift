//
//  main.swift
//  Calendar
//
//  Created by Russell Gordon on 2016-03-06.
//  Copyright © 2016 Royal St. George's College. All rights reserved.
//

// OK, get input working as required

var startDay : Int = 0 // Purposely set this to an invalid value

// Loop until we get the input we need
repeat {
    
    // Get input from the user
    print("Enter day:")
    // Must unwrap the optional String returned by readLine
    if let input = readLine(stripNewline: true) {
        
        // We must have non-nil input at this point
        // Try to convert it to an integer
        if let inputAsInteger = Int(input) {
            
            // At this point, we have integer input
            // Check if it is in range that we need
            if inputAsInteger >= 1 && inputAsInteger <= 7 {
                
                // We finally have input we need, assign it to the 'good' variable we'll use later
                startDay = inputAsInteger
                
            }
            
        }
        
    }

} while startDay == 0
