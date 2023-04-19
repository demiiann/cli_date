//
//  main.swift
//  MyCalendar
//
//  Created by apple on 2023/04/18.
//

import Foundation

class MyCalendar {
    
    private var date = Date()

    func printDate() -> PresentTime? {
        if let year = Calendar.current.dateComponents( [.year], from: date).year,
           let month = Calendar.current.dateComponents( [.month], from: date).month,
           let day = Calendar.current.dateComponents( [.day], from: date).day,
           let hour = Calendar.current.dateComponents( [.hour], from: date).hour,
           let minute = Calendar.current.dateComponents( [.minute], from: date).minute,
           let second = Calendar.current.dateComponents( [.second], from: date).second {
            let time = PresentTime(year: year, month: month, day: day, hour: hour, minute: minute, second: second)
            return time
        } else {
            return nil
        }
    }
    
    func convertStringToDate(year: String, month: String, day: String) -> Date? {
        var dateComponent = DateComponents()
        
        dateComponent.year = Int(year)
        dateComponent.month = Int(month)
        dateComponent.day = Int(day)
        
        guard let customDate = Calendar.current.date(from: dateComponent) else { return nil }
        return customDate
    }
    
    func convertIntegerToDate(year: Int, month: Int, day: Int) -> Date? {
        var dateComponent = DateComponents()
        
        dateComponent.year = year
        dateComponent.month = month
        dateComponent.day = day
        
        guard let customDate = Calendar.current.date(from: dateComponent) else { return nil }
        return customDate
    }
    
    func convertDateToKorean(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        return formatter.string(from: date)
    }
}

let myC = MyCalendar()
if let time = myC.printDate() { print(time) }
if let customStringDate = myC.convertStringToDate(year: "2023", month: "04", day: "18") {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy MM dd"
    print(formatter.string(from: customStringDate))
}
if let customIntegerDate = myC.convertIntegerToDate(year: 2023, month: 04, day: 19) {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy MM dd"
    print(formatter.string(from: customIntegerDate))
}
print(myC.convertDateToKorean(date: Date()))
