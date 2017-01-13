//
//  Protocol.swift
//  Protocol Example
//
//  Created by Md. Kamrul Hasan on 1/13/17.
//  Copyright © 2017 MKHG Lab. All rights reserved.
//

import Foundation

protocol NewProtocol {
    // protocol definition goes here
    func protocolInitiated(value: String);
    func protocolMethod(value: String) -> String;
}
