//
//  SampleView.swift
//  august
//
//  Created by 谷口幸路 on 2020/09/08.
//  Copyright © 2020 谷口幸路. All rights reserved.
//

import SwiftUI

struct DayView: View {
    @State var content:String
    var body: some View {
        VStack {
            Text(content)
        }
        .frame(width: 40, height: 40)
        .border(Color.gray, width: 1)
    }
}

struct SampleView: View {
    @State var calendarArr:[[String]] = []
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("\(String(Date().getYear))年")
                Text("\(String(Date().getMonth))月")
            }
            HStack(alignment: .center, spacing: 0) {
                DayView(content: "日")
                DayView(content: "月")
                DayView(content: "火")
                DayView(content: "水")
                DayView(content: "木")
                DayView(content: "金")
                DayView(content: "土")
            }
            if calendarArr.count > 0 {
                ForEach(0..<6) { w in
                    HStack(alignment: .center, spacing: 0) {
                        ForEach(0..<7) { d in
                            DayView(content: String(calendarArr[w][d]))
                        }
                    }
                }
            }
            
        }.onAppear(perform: {
            let startDate = Date().startDayOfMonth
            let lastDate = Date().lastDayOfMonth
            let endCount = lastDate.getDay
            let startWeekDay = Date().getWeekDayNum(date: startDate) - 1
            var dayCount = 1
            
            for w in 0..<6 {
                var weekArr:[String] = []
                for d in 0..<7 {
                    if w==0 && d<startWeekDay {
                        weekArr.append("-")
                    } else if dayCount > endCount {
                        weekArr.append("-")
                    } else {
                        weekArr.append("\(dayCount)")
                        dayCount += 1
                    }
                }
                calendarArr.append(weekArr)
            }
        })
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView()
    }
}
