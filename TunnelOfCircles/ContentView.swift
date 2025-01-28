//
//  ContentView.swift
//  TunnelOfCircles
//
//  Created by 千々岩真吾 on 2025/01/28.
//

import SwiftUI

struct ContentView: View {
  @State private var colors: [Color] = [.cyan, .blue]

  let minDiameter = 50.0
  let diameterChange = 70.0

  var body: some View {
    VStack {
      ZStack {
        ForEach(0..<4) { index in
          Circle()
            .stroke(lineWidth: 30)
            .foregroundStyle(colors[index % 2])
            .frame(height: minDiameter + diameterChange * Double(index))
        }
      }

      Grid {
        GridRow {
          Text("Colors")
          HStack {
            ColorPicker("Colors", selection: $colors[0])
            ColorPicker("Colors", selection: $colors[1])
            Spacer()
          }
          .labelsHidden()
        }
      }
    }
    .padding()
  }
}

#Preview(windowStyle: .automatic) {
  ContentView()
}
