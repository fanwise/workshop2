//
//  UserSessionClient.swift
//  workshop2
//
//  Created by Wei Fan on 1/16/17.
//  Copyright © 2017 Wei Fan. All rights reserved.
//

import Foundation

struct URLSessionClient: Client {
    let host = "https://api.onevcat.com"
    
    func send<T: Request>(_ r: T, handler: @escaping (T.Response?) -> Void) {
        let url = URL(string: host.appending(r.path))!
        var request = URLRequest(url: url)
        request.httpMethod = r.method.rawValue
        
        let task = URLSession.shared.dataTask(with: request) {
            data, _, error in
            if let data = data, let res = r.parse(data: data) {
                DispatchQueue.main.async { handler(res) }
            } else {
                DispatchQueue.main.async { handler(nil) }
            }
        }
        task.resume()
    }
}
