//
//  ViewCodable.swift
//  CatsApp
//
//  Created by Kevin Souza on 25/10/22.
//

import Foundation

protocol ViewCodable {
    func viewSetup()
    func constraintsSetup()
}

extension ViewCodable {
    func setup() {
        viewSetup()
        constraintsSetup()
    }
}

