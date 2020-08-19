//
//  SearchByCategoryView.swift
//  august
//
//  Created by 谷口幸路 on 2020/08/19.
//  Copyright © 2020 谷口幸路. All rights reserved.
//

import SwiftUI

struct SearchByCategoryView: View {
    @State var csvLines = [String]()
    
    var body: some View {
        VStack {
            Text("分類から調べる")
            
        }
        .onAppear(perform: {
            guard let path = Bundle.main.path(forResource: "dataList", ofType: "csv") else {
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
            
            for animalData in self.csvLines {
                let animalDetail = animalData.components(separatedBy: ",")
                print("【名前】\(animalDetail[0])　【体長】\(animalDetail[1]) cm　【体重】\(animalDetail[2]) kg")
                
            }
        })
    }
}

struct SearchByCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        SearchByCategoryView()
    }
}
