//
//  GanresManager.swift
//  BookShop
//
//  Created by Petro on 06.07.2023.
//

import Foundation

struct CategoriesManager {
    static func fetchData(completion: @escaping (Result<Categories, Error>) -> Void) {
        let url = URL(string: NetworkSettings.url + NetworkSettings.key)
        var request = URLRequest(url: url!)
        
        request.httpMethod = "GET"
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: request) { data, response, error in
            guard let data = data else { return }
            
            do {
                let result = try JSONDecoder().decode(Categories.self, from: data)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
