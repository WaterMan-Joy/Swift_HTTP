//
//  TestView.swift
//  Swift-HTTP
//
//  Created by 김종희 on 2023/08/18.
//

import SwiftUI

struct TestView: View {
    
    @ObservedObject var viewModel = TestViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(viewModel.tests) { test in
                    TestCell(test: test)
                }
            }
        }
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
