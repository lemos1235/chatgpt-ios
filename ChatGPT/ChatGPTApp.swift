//
//  ChatGPTApp.swift
//  ChatGPT
//
//  Created by Alfred Jobs on 2023/5/21.
//

import SwiftUI

extension View {
    func hideKeyboardWhenTappedAround() -> some View  {
        return self.onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),
                  to: nil, from: nil, for: nil)
        }
    }
}


@main
struct ChatGPTApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .hideKeyboardWhenTappedAround()
        }
    }
}
