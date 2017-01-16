//
//  Client.swift
//  workshop2
//
//  Created by Wei Fan on 1/16/17.
//  Copyright © 2017 Wei Fan. All rights reserved.
//

import Foundation

protocol Client {
    func send<T: Request>(_ r: T, handler: @escaping  (T.Response?) -> Void)
    
    var host: String{ get }
}
