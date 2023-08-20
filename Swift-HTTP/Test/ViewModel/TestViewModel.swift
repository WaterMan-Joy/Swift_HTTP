//
//  TestViewModel.swift
//  Swift-HTTP
//
//  Created by 김종희 on 2023/08/18.
//

import Foundation


class TestViewModel: ObservableObject {
    @Published var tests = [Test]()
    
    init() {
        print("DEBUG: INIT TEST VIEW MODEL")
        fetchTests()
    }
    
    
    func fetchTests() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if error != nil {
                print("DEBUG: ERROR: \(error!)")
                return
            }
            
            guard let data = data else {return}
            do {
                let tests = try JSONDecoder().decode([Test].self, from: data)
                let countTests = tests.filter({$0.id < 5})
                print(countTests)
                DispatchQueue.main.async {
                    self.tests = countTests
                }

            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
}
