//
//  BooksManager.swift
//  BookShop
//
//  Created by Petro on 06.07.2023.
//

import Foundation

enum BooksManager {
    static func fetchData(completion: @escaping (Result<BooksResult, Error>) -> Void) {
        let url = URL(string: "https://api.nytimes.com/svc/books/v3/lists/current/manga.json?api-key=" + NetworkSettings.key)
        var request = URLRequest(url: url!)
        
        request.httpMethod = "GET"
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: request) { data, response, error in
            guard let data = data else { return }
            
            do {
                let result = try JSONDecoder().decode(BooksResult.self, from: data)
                print(result)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
