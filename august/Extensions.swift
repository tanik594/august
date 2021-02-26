//
//  Extensions.swift
//  august
//
//  Created by 谷口幸路 on 2020/08/26.
//  Copyright © 2020 谷口幸路. All rights reserved.
//

import SwiftUI

extension Color {
    init(hex: Int, alpha: Double = 1) {
        let components = (
            R: Double((hex >> 16) & 0xff) / 255,
            G: Double((hex >> 08) & 0xff) / 255,
            B: Double((hex >> 00) & 0xff) / 255
        )
        self.init(
            .sRGB,
            red: components.R,
            green: components.G,
            blue: components.B,
            opacity: alpha
        )
    }
}

extension Date{

    var startDayOfMonth: Date{
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = calendar.component(.year, from: self)
        components.month = calendar.component(.month, from: self)
        components.day = 1
        components.hour = calendar.component(.hour, from: self)
        components.minute = calendar.component(.minute, from: self)
        components.second = calendar.component(.second, from: self)
        return calendar.date(from: components)!
    }

    var lastDayOfMonth: Date{
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = calendar.component(.year, from: self)
        components.month = calendar.component(.month, from: self)
        components.day = calendar.range(of: .day, in: .month, for: self)?.count
        components.hour = calendar.component(.hour, from: self)
        components.minute = calendar.component(.minute, from: self)
        components.second = calendar.component(.second, from: self)
        return calendar.date(from: components)!
    }

    func addYear(add:Int) -> Date{
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = calendar.component(.year, from: self) + add
        components.month = calendar.component(.month, from: self)
        components.day = calendar.component(.day, from: self)
        components.hour = calendar.component(.hour, from: self)
        components.minute = calendar.component(.minute, from: self)
        components.second = calendar.component(.second, from: self)
        return calendar.date(from: components)!
    }

    func addMonth(add:Int) -> Date{
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = calendar.component(.year, from: self)
        components.month = calendar.component(.month, from: self) + add
        components.day = calendar.component(.day, from: self)
        components.hour = calendar.component(.hour, from: self)
        components.minute = calendar.component(.minute, from: self)
        components.second = calendar.component(.second, from: self)
        return calendar.date(from: components)!
    }

    func addDay(add:Int) -> Date{
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = calendar.component(.year, from: self)
        components.month = calendar.component(.month, from: self)
        components.day = calendar.component(.day, from: self) + add
        components.hour = calendar.component(.hour, from: self)
        components.minute = calendar.component(.minute, from: self)
        components.second = calendar.component(.second, from: self)
        return calendar.date(from: components)!
    }

    func addHour(add:Int) -> Date{
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = calendar.component(.year, from: self)
        components.month = calendar.component(.month, from: self)
        components.day = calendar.component(.day, from: self)
        components.hour = calendar.component(.hour, from: self) + add
        components.minute = calendar.component(.minute, from: self)
        components.second = calendar.component(.second, from: self)
        return calendar.date(from: components)!
    }

    func addMinute(add:Int) -> Date{
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = calendar.component(.year, from: self)
        components.month = calendar.component(.month, from: self)
        components.day = calendar.component(.day, from: self)
        components.hour = calendar.component(.hour, from: self)
        components.minute = calendar.component(.minute, from: self) + add
        components.second = calendar.component(.second, from: self)
        return calendar.date(from: components)!
    }

    func addSecond(add:Int) -> Date{
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = calendar.component(.year, from: self)
        components.month = calendar.component(.month, from: self)
        components.day = calendar.component(.day, from: self)
        components.hour = calendar.component(.hour, from: self)
        components.minute = calendar.component(.minute, from: self)
        components.second = calendar.component(.second, from: self) + add
        return calendar.date(from: components)!
    }

    func setYear(value:Int) -> Date{
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = value
        components.month = calendar.component(.month, from: self)
        components.day = calendar.component(.day, from: self)
        components.hour = calendar.component(.hour, from: self)
        components.minute = calendar.component(.minute, from: self)
        components.second = calendar.component(.second, from: self)
        return calendar.date(from: components)!
    }

    func setMonth(value:Int) -> Date{
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = calendar.component(.year, from: self)
        components.month = value
        components.day = calendar.component(.day, from: self)
        components.hour = calendar.component(.hour, from: self)
        components.minute = calendar.component(.minute, from: self)
        components.second = calendar.component(.second, from: self)
        return calendar.date(from: components)!
    }

    func setDay(value:Int) -> Date{
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = calendar.component(.year, from: self)
        components.month = calendar.component(.month, from: self)
        components.day = value
        components.hour = calendar.component(.hour, from: self)
        components.minute = calendar.component(.minute, from: self)
        components.second = calendar.component(.second, from: self)

        return calendar.date(from: components)!
    }

    func setHour(value:Int) -> Date{
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = calendar.component(.year, from: self)
        components.month = calendar.component(.month, from: self)
        components.day = calendar.component(.day, from: self)
        components.hour = value
        components.minute = calendar.component(.minute, from: self)
        components.second = calendar.component(.second, from: self)
        return calendar.date(from: components)!
    }

    func setMinute(value:Int) -> Date{
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = calendar.component(.year, from: self)
        components.month = calendar.component(.month, from: self)
        components.day = calendar.component(.day, from: self)
        components.hour = calendar.component(.hour, from: self)
        components.minute = value
        components.second = calendar.component(.second, from: self)
        return calendar.date(from: components)!
    }

    func setSecond(value:Int) -> Date{
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = calendar.component(.year, from: self)
        components.month = calendar.component(.month, from: self)
        components.day = calendar.component(.day, from: self)
        components.hour = calendar.component(.hour, from: self)
        components.minute = calendar.component(.minute, from: self)
        components.second = value
        return calendar.date(from: components)!
    }

    var getYear : Int{
        let calendar = Calendar.current
        return calendar.component(.year, from: self)
    }

    var getMonth : Int{
        let calendar = Calendar.current
        return calendar.component(.month, from: self)
    }

    var getDay : Int{
        let calendar = Calendar.current
        return calendar.component(.day, from: self)
    }

    var getHour : Int{
        let calendar = Calendar.current
        return calendar.component(.hour, from: self)
    }

    var getMinute : Int{
        let calendar = Calendar.current
        return calendar.component(.minute, from: self)
    }

    var getSecond : Int{
        let calendar = Calendar.current
        return calendar.component(.second, from: self)
    }


    func text(format:String,identifier:String = "ja_JP") -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: identifier)
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }

    func getWeekDayNum(date:Date, identifier:String = "ja_JP") -> Int{
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: identifier)
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "EEEEE", options: 0, locale: Locale.current)
        let weekDay = dateFormatter.string(from: date)
        if weekDay == "日" {
            return 1
        } else if weekDay == "月" {
            return 2
        } else if weekDay == "火" {
            return 3
        } else if weekDay == "水" {
            return 4
        } else if weekDay == "木" {
            return 5
        } else if weekDay == "金" {
            return 6
        } else if weekDay == "土" {
            return 7
        }
        return 0
    }
}
