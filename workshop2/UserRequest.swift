//
//  UserRequest.swift
//  workshop2
//
//  Created by Wei Fan on 1/16/17.
//  Copyright © 2017 Wei Fan. All rights reserved.
//

import Foundation

struct UserRequest: Request {
    let name: String
    var path: String {
        return "/users/\(name)"
    }
    let method: HTTPMethod = .GET
    let parameter: [String: Any] = [:]
    
    typealias Response = User
    func parse(data: Data) -> User? {
        return User(data: data)
    }
}
