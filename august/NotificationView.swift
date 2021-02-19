//
//  NotificationView.swift
//  august
//
//  Created by 谷口幸路 on 2020/08/19.
//  Copyright © 2020 谷口幸路. All rights reserved.
//

import SwiftUI

struct NotificationView: View {
    
    func setNotification() -> Void {
        //日時を指定する
        //let triggerDate = DateComponents(month:2, day:16, hour:20, minute:12, second: 0)
        //let trigger = UNCalendarNotificationTrigger(dateMatching: triggerDate, repeats: false)
        //曜日と時間を指定して繰り返す 3=火曜日
        let triggerDate = DateComponents(hour:20, minute:37, weekday:3)
        let trigger = UNCalendarNotificationTrigger(dateMatching: triggerDate, repeats: true)
        
        let content = UNMutableNotificationContent()
        content.title = "ゴミカレンダー"
        content.body = "明日は燃えるゴミの日です"
        content.sound = UNNotificationSound.default
        
        let request = UNNotificationRequest.init(identifier: "CalendarNotification", content: content, trigger: trigger)
        
        let center = UNUserNotificationCenter.current()
        center.add(request) { (error) in
            if error != nil {
                print(error.debugDescription)
            }
        }
        
        center.getPendingNotificationRequests { (request) in
            print(request)
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text("Notification Demo")
            Spacer()
            Button(action: {
                self.setNotification()
            }) {
                Text("Set Notification!")
            }
            Spacer()
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
