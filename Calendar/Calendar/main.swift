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
    
    // Must safely unwrap the optional String returned by readLine
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


var daysInMonth : Int = 0 // Purposely set this to an invalid value

// Loop until we get the input we need
repeat {
    
    // Get input from the user
    print("Enter the number of days in the month:")
    
    // Must safely unwrap the optional String returned by readLine
    if let input = readLine(stripNewline: true) {
        
        // We must have non-nil input at this point
        // Try to convert it to an integer
        if let inputAsInteger = Int(input) {
            
            // At this point, we have integer input
            // Check if it is in range that we need
            if inputAsInteger >= 28 && inputAsInteger <= 31 {
                
                // We finally have input we need, assign it to the 'good' variable we'll use later
                daysInMonth = inputAsInteger
                
            }
            
        }
        
    }
    
} while daysInMonth == 0


var specialDay : Int = 0 // Purposely set this to an invalid value

// Loop until we get the input we need
repeat {
    
    // Get input from the user
    print("Enter the special day:")
    
    // Must safely unwrap the optional String returned by readLine
    if let input = readLine(stripNewline: true) {
        
        // We must have non-nil input at this point
        // Try to convert it to an integer
        if let inputAsInteger = Int(input) {
            
            // At this point, we have integer input
            // Check if it is in range that we need
            if inputAsInteger >= 1 && inputAsInteger <= daysInMonth {
                
                // We finally have input we need, assign it to the 'good' variable we'll use later
                specialDay = inputAsInteger
                
            }
            
        }
        
    }
    
} while specialDay == 0

// Other variables
var currentPositionInCalendar : Int = 1
var currentDayInMonth : Int = 1

// Process and output

// Print out the header
print("")
print("Sun Mon Tue Wed Thr Fri Sat")

// Generate output
for row in 1...6 {
    
    // Go across the columns for this row
    for column in 1...7 {
        
        // When less than the start day, print three blank spaces
        if currentPositionInCalendar < startDay {
            
            print("   ", terminator: "")
            
        } else if currentPositionInCalendar >= startDay && currentDayInMonth <= daysInMonth {
            
            // Print a day in the calendar
            if currentDayInMonth < 10 {
                
                // Check if this is the special day
                if currentDayInMonth == specialDay {
                    print(" *", terminator: "")
                } else {
                    // Two spaces to pad a single-digit day
                    print("  ", terminator: "")
                }
                
            } else {
                
                // Check if this is the special day
                if currentDayInMonth == specialDay {
                    print("*", terminator: "")
                } else {
                    // One space to pad a two-digit day
                    print(" ", terminator: "")
                }
                
            }
            
            // Then print day
            print("\(currentDayInMonth)", terminator: "")
            
            // Go to next day in month
            currentDayInMonth += 1
            
        }
        
        // Print a space between columns (for now use an underscore for clarity)
        if column < 7 {
            print(" ", terminator: "")
        }
        
        
        // Increment current position in calendar
        currentPositionInCalendar += 1
    }
    
    // Move down to the next row
    print("")
    
}
