// Russell Gordon
//
// "Calendar"

// Notes
//
// Basically I need two nested loops (one inside another).
//
// Worst case scenario for a calendar is that the first day is a Saturday, and there
// are 31 days.
//
// Then I'd have:
//
// Sun Mon Tue Wed Thr Fri Sat
//                           1
//   2   3   4   5   6   7   8
//   9  10  11  12  13  14  15
//  16  17  18  19  20  21  22
//  23  24  25  26  27  28  29
//  30  31
//
// So, in this worst case scenario, I'd need 6 rows, and there are always 7 columns.
// I need to pad the smaller numbers with spaces. There is always one space between
// a column. And I have to watch out for the special day and place an asterisk there.

// Input variables
let startDay : Int = 7
let daysInMonth : Int = 31
let specialDay : Int = 2

// Other variables
var currentPositionInCalendar : Int = 1
var currentDayInMonth : Int = 1

// Process and output

// Print out the header
print("Sun Mon Tue Wed Thr Fri Sat")

// Generate output
for row in 1...6 {
    
    // Go across the columns for this row
    for column in 1...7 {
        
        // When less than the start day, print three blank spaces
        if currentPositionInCalendar < startDay {
            
            print("   ", terminator: "")
            
        }
        
        // Always print a space between columns (for now use an underscore for clarity)
        print("_", terminator: "")
        
        // Increment current position in calendar
        currentPositionInCalendar += 1
    }
    
    // Move down to the next row
    print("")
    
}