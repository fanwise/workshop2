//
//  Decodable.swift
//  workshop2
//
//  Created by Wei Fan on 1/16/17.
//  Copyright © 2017 Wei Fan. All rights reserved.
//

import Foundation

protocol Decodable {
    static func parse(data: Data) -> Self?
}
