//
//  HomeView.swift
//  august
//
//  Created by 谷口幸路 on 2020/08/05.
//  Copyright © 2020 谷口幸路. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text("月")
                    Text("火")
                    Text("水")
                    Text("木")
                    Text("金")
                    Text("土")
                    Text("日")
                }
                Text("本日4月5日（金）の改修")
                Text("福山市ごみ処理状況")
                Text("ゴミの出し方・分け方")
                HStack {
                    NavigationLink(destination: SearchByCategoryView()) {
                        Text("分類から調べる")
                    }
                    NavigationLink(destination: SearchByNameView()) {
                        Text("名前から調べる")
                    }
                }
            }
        }.frame(minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .topLeading
        ).background(Color(hex: 0xFFD3F3))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
