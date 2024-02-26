//
//  ShotFileInfo.swift
//  ScanObject
//
//  Created by RX on 2/26/24.
//

import Foundation

struct ShotFileInfo {
    let fileURL: URL
    let id: UInt32

    init?(url: URL) {
        fileURL = url
        guard let shotID = CaptureFolderManager.parseShotId(url: url) else {
            return nil
        }

        id = shotID
    }
}

extension ShotFileInfo: Identifiable { }
