//
//  HomeScreenWorker.swift
//  CatsApp
//
//  Created by Kevin Souza on 25/10/22.
//

import Foundation

class HomeScreenWorker {
    
    func getCats(onComplete: @escaping (Cats?) -> Void) {
        let endpoint = "breeds"
        
        Rest.loadAPI(json: nil, header: ApiKey.key, endPointPath: endpoint, HTTPMethod: .GET) { (data, error) in
            do {
                if let data = data {
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .secondsSince1970
                    let cats = try decoder.decode(Cats.self, from: data)
                    onComplete(cats)
                } else {
                    onComplete(nil)
                }
            } catch {
                onComplete(nil)
            }
        }
    }
}
