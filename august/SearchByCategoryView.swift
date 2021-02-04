//
//  SearchByCategoryView.swift
//  august
//
//  Created by 谷口幸路 on 2020/08/19.
//  Copyright © 2020 谷口幸路. All rights reserved.
//

import SwiftUI

struct Animal: Identifiable {
    let id: Int
    let name: String
    let height: String
    let weight: String
}


struct SearchByCategoryView: View {
    @State var csvLines = [String]()
    @State var csvArr = [Animal]()
    @State var selectNum: Int = -1
    
    var body: some View {
        VStack {
            Text("分類から調べる")
            List(csvArr) {animal in
                Button(action: {
                    selectNum = animal.id
                }) {
                    HStack {
                        if (animal.id == selectNum) {
                            Image(systemName: "checkmark.circle.fill")
                        }
                        Text("\(animal.name)")
                    }
                }
                /*NavigationLink(destination: AnimalView(name: animal.name, height: animal.height, weight: animal.weight)) {
                    Text("\(animal.name)")
                }*/
            }
        }
        .onAppear(perform: {
            /*guard let path = Bundle.main.path(forResource: "dataList00", ofType: "csv") else {
                print("csvファイルがないよ")
                return
            }*/
            
            if let path = Bundle.main.path(forResource: "dataList", ofType: "csv") {
                do {
                    let csvString = try String(contentsOfFile: path, encoding: String.Encoding.utf8)
                    self.csvLines = csvString.components(separatedBy: .newlines)
                    self.csvLines.removeLast()
                } catch let error as NSError {
                    print("Error: \(error)")
                    return
                }
                
                var cnt = 0
                for animalData in self.csvLines {
                    let animalDetail = animalData.components(separatedBy: ",")
                    print("【名前】\(animalDetail[0])　【体長】\(animalDetail[1]) cm　【体重】\(animalDetail[2]) kg")
                    
                    self.csvArr.append(Animal(id: cnt, name: animalDetail[0], height: animalDetail[1], weight: animalDetail[2]))
                    cnt += 1
                }
            }
 
            
        })
    }
}

struct SearchByCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        SearchByCategoryView()
    }
}
