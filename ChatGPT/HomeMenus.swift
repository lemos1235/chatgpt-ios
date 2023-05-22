//
//  HomeMenus.swift
//  ChatGPT
//
//  Created by Alfred Jobs on 2023/5/21.
//

import SwiftUI

struct HomeMenus: View {
    @State private var isShowingHistory = false

    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        VStack {
            Menu {
                Button {
                    isShowingHistory = true
                } label: {
                    Label("History", systemImage: "clock")
                }
                Button {
                    print("go to settings")
                } label: {
                    Label("Settings", systemImage: "gearshape.fill")
                }
                Divider()
                Button {
                    print("new chat")
                } label: {
                    Label("New Chat", systemImage: "plus")
                }

            } label: {
                Label("Add", systemImage: "ellipsis")
                    .labelStyle(.iconOnly)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 20)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color(.quaternarySystemFill))
                    )
            }
            .foregroundColor(colorScheme == .dark ? .white : .black)
        }.sheet(isPresented: $isShowingHistory) {
            HistoryModalView()
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.hidden)
        }
    }
}

struct HistoryModalView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            ZStack {
                Text("History")
                    .font(.headline)
                    .foregroundColor(.primary)
                    .padding(.horizontal)

                Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.body)
                        .tint(Color(.systemGray2))
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal)
            }.padding(.vertical, 8)
            Spacer()
        }
    }
}

struct HomeMenus_Previews: PreviewProvider {
    static var previews: some View {
        HomeMenus()
    }
}
