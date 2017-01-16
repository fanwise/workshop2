
//
//  UserExtension.swift
//  workshop2
//
//  Created by Wei Fan on 1/16/17.
//  Copyright © 2017 Wei Fan. All rights reserved.
//

import Foundation

extension User: Decodable {
    static func parse(data: Data) -> User? {
        return User(data: data)
    }
}
