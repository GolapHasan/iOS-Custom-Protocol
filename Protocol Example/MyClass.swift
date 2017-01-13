//
//  MyProtocol.swift
//  Protocol Example
//
//  Created by Md. Kamrul Hasan on 1/13/17.
//  Copyright © 2017 MKHG Lab. All rights reserved.
//

import Foundation


class MyClass{
    
    var delegate: NewProtocol?
    
    init(pro:NewProtocol) {
        print("init called")
        delegate = pro
        delegate?.protocolInitiated(value: "protocol initiated")
    }
    
    
    func MyProtocolClassMethod(value: String) -> String {
        return (delegate?.protocolMethod(value: value))!
    }
}
