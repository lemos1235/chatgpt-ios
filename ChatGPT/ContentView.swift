//
//  ContentView.swift
//  ChatGPT
//
//  Created by Alfred Jobs on 2023/5/21.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                HStack {
                    HStack {
                        TextField("Message", text: $message)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                        Image(systemName: "mic")
                            .padding(.trailing)
                            .foregroundColor(.secondary)
                    }
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(8)
                    Image(systemName: "arrow.up.circle.fill")
                        .font(.system(size: 24))
                }.padding(.horizontal)
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    HomeMenus()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
