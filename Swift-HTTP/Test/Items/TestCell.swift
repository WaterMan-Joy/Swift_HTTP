//
//  TestCell.swift
//  Swift-HTTP
//
//  Created by 김종희 on 2023/08/18.
//

import SwiftUI

struct TestCell: View {
    let test: Test
    var body: some View {
        VStack(alignment: .leading) {
            Text(test.title)
                .font(.system(size: 30, weight: .bold, design: .monospaced))
            Text(test.body)
                .font(.system(size: 20, weight: .semibold, design: .monospaced))
            Divider()
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
}

