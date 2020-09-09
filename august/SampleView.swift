//
//  SampleView.swift
//  august
//
//  Created by 谷口幸路 on 2020/09/08.
//  Copyright © 2020 谷口幸路. All rights reserved.
//

import SwiftUI

struct SampleView: View {
    @State var x:Int = 1
    
    var body: some View {
        Text("\(x)")
        .onAppear(perform: {
            self.x = self.x + 1
        })
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView()
    }
}
