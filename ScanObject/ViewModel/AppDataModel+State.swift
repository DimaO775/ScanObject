//
//  AppDataModel+State.swift
//  ScanObject
//
//  Created by RX on 2/26/24.
//

import Foundation

extension AppDataModel {
    enum ModelState: String, CustomStringConvertible {
        var description: String { rawValue }

        case notSet
        case ready
        case capturing
        case prepareToReconstruct
        case reconstructing
        case viewing
        case completed
        case restart
        case failed
    }
}
