//
//  HomeView.swift
//  august
//
//  Created by 谷口幸路 on 2020/08/05.
//  Copyright © 2020 谷口幸路. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var isActiveSubView1 = false
    @State var isActiveSubView2 = false
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
                }.padding(.top, 40.0)
                Text("本日4月5日（金）の改修")
                Text("福山市ごみ処理状況")
                Text("ゴミの出し方・分け方")
                HStack {
                    NavigationLink(destination: SearchByCategoryView(), isActive: $isActiveSubView1) {
                        EmptyView()
                    }
                    Button(action: {
                        self.isActiveSubView1 = true
                    }) {
                        HStack {
                            Image("searchBtn")
                                .renderingMode(.original)
                            Text("分類から調べる")
                        }
                    }
                    NavigationLink(destination: SearchByNameView(), isActive: $isActiveSubView2) {
                        EmptyView()
                    }
                    Button(action: {
                        self.isActiveSubView2 = true
                    }) {
                        HStack {
                            Image("searchBtn")
                                .renderingMode(.original)
                                .background(isActiveSubView2 ? Color.blue.opacity(0.5) : Color.blue.opacity(0))
                            Text("名前から調べる")
                        }
                    }
                }
            }
        }.frame(minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .topLeading
        ).background(Color(hex: 0xFFD3F3))
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
