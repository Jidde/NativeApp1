//
//  Logic.swift
//  Heartbeat
//
//  Created by Jidde Koekoek on 05/02/16.
//  Copyright © 2016 Jidde Koekoek. All rights reserved.
//
//  Logic for date and time calculation till Valentine

import Foundation

// Import date and time

let date = NSDate()
let calendar = NSCalendar.currentCalendar()
let components = calendar.components([.Month,.Day, .Hour, .Minute], fromDate: date)
var month = components.month
var day = components.day
var hour = components.hour
var minutes = components.minute

// Create class for countdown function

class Countdown {
    class func countdown () -> String {
        
        var monthsTill: Int
        var daysTill: Int
        var hoursTill: Int
        var minutesTill: Int
        
        // Check if it is february and return time till Valentine
        if month == 2 {
            daysTill = 14 - (day + 1)
            hoursTill = 24 - (hour + 1)
            minutesTill = 60 - minutes
            return "Nog \(daysTill) dagen, \(hoursTill) uren en \(minutesTill) minuten tot Valentijnsdag"
        }
            
        // Return time till Valentine
        else {
            monthsTill = 12 - (month + 1)
            daysTill = 14 - (day + 1)
            hoursTill = 24 - (hour + 1)
            minutesTill = 60 - minutes
            return "Nog \(monthsTill)maanden, \(daysTill) dagen, \(hoursTill) uren en \(minutesTill) minuten tot Valentijnsdag"
        }
        
    }
}