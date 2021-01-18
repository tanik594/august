//
//  A.swift
//  Fukuyama Waste Segregation 1.0.0
//
//  Created by 近井聖崇 on 2021/01/15.
//

import SwiftUI
struct Area: Identifiable {
    let id: Int
    let name: String

}


struct Setting_area: View {
        @State var csvLines = [String]()
    @State var csvArr = [Area]()
        
    var body: some View {
                VStack {
                    Text("分類から調べる")
                     List(csvArr) {area in
                         HStack {
                            Text("\(area.id)")
                            Text("\(area.name)")
                        }
                    }
                }
                .onAppear(perform: {
                    guard let path = Bundle.main.path(forResource: "Setting_area", ofType: "csv")//読み込みファイル指定
                    else {
                        print("csvファイルがないよ")
                        return
                    }
                    
                    do {
                        let csvString = try String(contentsOfFile: path, encoding: String.Encoding.utf8)
                        self.csvLines = csvString.components(separatedBy: .newlines)
                        self.csvLines.removeLast()
                    } catch let error as NSError {
                        print("Error: \(error)")
                        return
                    }
                    
                    var cnt = 0
                    for area_data in self.csvLines {
                        let area_datail = area_data.components(separatedBy: ",")
                        print("【名前】\(area_datail [0])")
                        self.csvArr.append(Area(id: cnt, name: area_datail[0]))
                        cnt += 1
                    }
                })
            }
        }
    


struct Setting_area_Previews: PreviewProvider {
    static var previews: some View {
        Setting_area()
    }
}
