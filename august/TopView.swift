//
//  TopView.swift
//  august
//
//  Created by 谷口幸路 on 2020/08/19.
//  Copyright © 2020 谷口幸路. All rights reserved.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        NavigationView {
            HomeView()
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
