//
//  AnimalView.swift
//  august
//
//  Created by 谷口幸路 on 2020/08/26.
//  Copyright © 2020 谷口幸路. All rights reserved.
//

import SwiftUI

struct AnimalView: View {
    let name: String
    let height: String
    let weight: String
    
    var body: some View {
        VStack {
            Text("\(self.name)")
            Text("\(self.height)cm")
            Text("\(self.weight)kg")
        }
    }
}

struct AnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView(name: "", height: "", weight: "")
    }
}
