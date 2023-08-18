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
        fetchTests()
    }
    
    
    func fetchTests() {
        print("DEBUG: INIT VIEW MODEL")
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        
        
        let task = URLSession.shared.dataTask(with: url) { data, res, error in
            if error != nil {
                print("DEBUG: ERROR: \(error!)")
                return
            }
            
            guard let data = data else {return}
            do {
                let tests = try JSONDecoder().decode([Test].self, from: data)
                print("DEBUG: TESTS: \(tests)")
                DispatchQueue.main.async {
                    self.tests = tests
                }

            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
}
