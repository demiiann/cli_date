//
//  presentTime.swift
//  MyCalendar
//
//  Created by apple on 2023/04/18.
//

import Foundation

struct PresentTime {
    private var year: Int = 0
    private var month: Int = 0
    private var day: Int = 0
    private var hour: Int = 0
    private var minute: Int = 0
    private var second: Int = 0
    
    init(year: Int, month: Int, day: Int, hour: Int, minute: Int, second: Int) {
        self.year = year
        self.month = month
        self.day = day
        self.hour = hour
        self.minute = minute
        self.second = second
    }
}

extension PresentTime: CustomStringConvertible {
    var description: String {
        return "\(year), \(month), \(day), \(hour), \(minute), \(second)"
    }
}
