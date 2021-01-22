//
//  ContentView.swift
//  august
//
//  Created by 谷口幸路 on 2020/08/05.
//  Copyright © 2020 谷口幸路. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var tabNumber = UserDefaults.standard.value(forKey: "address") as? String != nil ? 0 : 1
    var body: some View {
        TabView(selection: $tabNumber) {
            TopView().tabItem {
                tabNumber == 0 ? Image(systemName: "house") : Image(systemName: "bell")
                Text("ホーム")
            }
            .tag(0)
            SettingView().tabItem {
                tabNumber == 1 ? Image(systemName: "gear") : Image(systemName: "bell")
                Text("設定")
            }.tag(1)
            NotificationView().tabItem {
                tabNumber == 2 ? Image(systemName: "bell") : Image(systemName: "gear")
                Text("通知")
            }.tag(2)
            InformationView().tabItem {
                tabNumber == 3 ? Image(systemName: "info.circle") : Image(systemName: "gear")
                Text("情報")
            }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
