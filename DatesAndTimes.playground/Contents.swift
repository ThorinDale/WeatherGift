import UIKit

// Boston Time
//let unixDate: TimeInterval = 1590690710

// Berlin Time
let unixDate: TimeInterval = 1616865403
let usableDate = Date(timeIntervalSince1970: unixDate)
print("GMT")
print(usableDate)

let dateFormatter = DateFormatter()
dateFormatter.dateStyle = .full
dateFormatter.timeStyle = .full
var dateString = dateFormatter.string(from: usableDate)
print("My TimeZone (Boston) take from my Mac")
print(dateString)

//TimeZone.knownTimeZoneIdentifiers.forEach({print($0)})
let timeZone = TimeZone(identifier: "Europe/Berlin")
dateFormatter.timeZone = timeZone
dateString = dateFormatter.string(from: usableDate)
print("Europe/Berlin")
print(dateString)

// Wednesday, May 28, 2020
dateFormatter.dateFormat = "EEEE, MMM d"

dateString = dateFormatter.string(from: usableDate)
print("Europe/Berlin with date pattern")
print(dateString)
