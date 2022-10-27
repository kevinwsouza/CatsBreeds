//
//  REST.swift
//  CatsApp
//
//  Created by Kevin Souza on 25/10/22.
//

import Foundation

//MARK: - HTTPMethod

enum HTTPMethod {
    case GET
    case POST
}

struct ApiKey {
    static let key = "c0f41c38-f785-480d-9c66-ae2359cbaea3"
}

//MARK: - REST API

class Rest {
    static let basePath = "https://api.thecatapi.com/v1/"
    private static let configuration: URLSessionConfiguration = {
        let config = URLSessionConfiguration.default
        config.timeoutIntervalForResource = 10.0
        config.timeoutIntervalForRequest = 60.0
        config.httpMaximumConnectionsPerHost = 5
        return config
    }()
    private static let session = URLSession(configuration: configuration )
    
    //MARK: - load API
    
    class func loadAPI(json: Data?, header:String?,endPointPath: String,HTTPMethod: HTTPMethod , onComplete: @escaping (Data?, Error?) -> Void){
        
        let endPointPath = endPointPath
        let finalUrl = "\(basePath)\(endPointPath)"
        
        guard let url = URL(string: finalUrl ) else {return}
        
        var request = URLRequest(url: url)
        request.addValue(ApiKey.key, forHTTPHeaderField: "x-api-key")
        switch HTTPMethod {
        case .GET:
            let httpMethod: String = "GET"
            request.httpMethod = httpMethod
        case .POST:
            let httpMethod: String = "POST"
            request.httpMethod = httpMethod
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("*/*", forHTTPHeaderField: "accept")
            request.httpBody = json
        }
        
        //MARK: - data success
        
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            if let response = response as? HTTPURLResponse {
                if (200...300).contains(response.statusCode) {
                    if let data = data {
                        onComplete(data, nil)
                    }
                } else {
                    if let error = error {
                        onComplete(nil, error)
                    }
                }
            } else {
                onComplete(nil, error)
            }
        }
        dataTask.resume()
    }
}
