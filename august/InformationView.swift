//
//  InformationView.swift
//  august
//
//  Created by 谷口幸路 on 2020/08/19.
//  Copyright © 2020 谷口幸路. All rights reserved.
//

import SwiftUI

struct InformationView: View {
    @State var multipleIsPresented = false
    @State var originalIsPresented = false
    
    var rkManager = RKManager(calendar: Calendar.current, minimumDate: Date().startDayOfMonth, maximumDate: Date().lastDayOfMonth, mode: 3)
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                NavigationLink(destination: RKViewController(isPresented: self.$multipleIsPresented, rkManager: self.rkManager), isActive: self.$multipleIsPresented) {
                    EmptyView()
                }
                Button(action: {
                    self.multipleIsPresented.toggle()
                    
                    let formatter: DateFormatter = DateFormatter()
                    formatter.dateFormat = "yyyy/MM/dd"
                    let dt1 : Date  = formatter.date(from: "2021/02/22")!
                    let dt2 : Date  = formatter.date(from: "2021/02/25")!
                    
                    let testOnDates = [dt1, dt2]
                    self.rkManager.selectedDates.append(contentsOf: testOnDates)
                    
                    //self.rkManager.colors.weekdayHeaderColor = Color.blue
                    //self.rkManager.colors.monthHeaderColor = Color.green
                    //self.rkManager.colors.textColor = Color.blue
                    //self.rkManager.colors.disabledColor = Color.red
                }) {
                    Text("RKCalendar")
                }
                
                Spacer()
                
                NavigationLink(destination: SampleView(), isActive: self.$originalIsPresented) {
                    EmptyView()
                }
                Button(action: {
                    self.originalIsPresented.toggle()
                }) {
                    Text("独自カレンダー")
                }
                
                Spacer()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
    
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
