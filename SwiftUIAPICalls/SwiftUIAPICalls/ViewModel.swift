//
//  ViewModel.swift
//  SwiftUIAPICalls
//
//  Created by Brian Bachow on 3/10/22.
//

import Foundation
import SwiftUI

class ViewModel : ObservableObject {
    @Published var courses: [Course] = []
    func fetch(){
        guard let url = URL(string: "https://iosacademy.io/api/v1/courses/index.php") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, error == nil else {
                return
            }
            
            //Convert to JSON
            do {
                let courses = try JSONDecoder().decode([Course].self, from: data)
                DispatchQueue.main.async {
                    self?.courses = courses
                }
            } catch {
                print(error)
            }
        }
        
        task.resume()
    }
}
