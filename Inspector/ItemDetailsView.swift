//
//  ContentView.swift
//  Inspector
//
//  Created by Tim Mitra on 2024-05-03.
//

import SwiftUI

struct ItemDetailsView: View {
  let item: String
  @State private var inspectorShown = false
  
    var body: some View {
        VStack {
            Text(verbatim: item)
          Button {
            inspectorShown = true
          } label: {
            Label("Inspector", systemImage: "info.circle.fill")
          }
          .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Details")
        .inspector(isPresented: $inspectorShown) {
          Form {
            LabeledContent("size", value: item.count.formatted())
          }
          .navigationTitle("Inspector")
        }
    }
}

#Preview {
  ItemDetailsView(item: "Details")
}
