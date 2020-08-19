//
//  ContentView.swift
//  august
//
//  Created by 谷口幸路 on 2020/08/05.
//  Copyright © 2020 谷口幸路. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house")
                Text("ホーム")
            }.tag(1)
            SettingView().tabItem {
                Image(systemName: "gear")
                Text("設定")
            }.tag(2)
            NotificationView().tabItem {
                Image(systemName: "bell")
                Text("通知")
            }.tag(3)
            InformationView().tabItem {
                Image(systemName: "info.circle")
                Text("情報")
            }.tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
