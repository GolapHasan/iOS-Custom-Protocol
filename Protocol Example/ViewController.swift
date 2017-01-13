//
//  ViewController.swift
//  Protocol Example
//
//  Created by Md. Kamrul Hasan on 1/13/17.
//  Copyright © 2017 MKHG Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("--------MyClass Creating------------")
        
        let tempClass = MyClass(pro: self) //Initializing delegete in init()
        
        print("--------MyClass Created------------")
        
        print("\n\n--------Delegate Assigning Manually------------")
    
        tempClass.delegate = self                  //Initializing delegete manually
        
        print("--------Delegate Assigned Manually------------")
        
        print("\n\n--------Delegate Calling------------")
        print("Response of delegate: ", tempClass.MyProtocolClassMethod(value: "MKHG Lab")) //Calling a method which further calls the delegate methods
        print("--------Delegate Called------------")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: NewProtocol{
    
    func protocolInitiated(value: String) {
        print("protocolInitiated called with: ", value)
    }
    
    func protocolMethod(value: String) -> String {
        
        print("protocolMethod called with: ", value)
        
        return value;
    }
    
}

