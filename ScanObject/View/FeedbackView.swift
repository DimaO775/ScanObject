//
//  FeedbackView.swift
//  ScanObject
//
//  Created by RX on 2/26/24.
//

import RealityKit
import SwiftUI

struct FeedbackView: View {
    @ObservedObject var messageList: TimedMessageList

    var body: some View {
        VStack {
            if let activeMessage = messageList.activeMessage {
                Text("\(activeMessage.message)")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .environment(\.colorScheme, .dark)
                    .transition(.opacity)
            }
        }
    }
}
