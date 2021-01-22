//
//  SettingView.swift
//  august
//
//  Created by 谷口幸路 on 2020/08/05.
//  Copyright © 2020 谷口幸路. All rights reserved.
//

import SwiftUI

struct SettingView: View {
    @State var isActiveSubView1 = false
    var body: some View {
        VStack {
            Spacer()
            Text("設定")
            Spacer()
            Button(action: {
                self.isActiveSubView1 = true
                UserDefaults.standard.set("世田谷区三宿", forKey: "address")
            }) {
                Text("設定保存")
            }
            Spacer()
            Button(action: {
                UserDefaults.standard.removeObject(forKey: "address")
            }) {
                Text("設定削除")
            }
            Spacer()
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
