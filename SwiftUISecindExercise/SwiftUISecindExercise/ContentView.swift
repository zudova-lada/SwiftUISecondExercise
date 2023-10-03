//
//  ContentView.swift
//  SwiftUISecindExercise
//
//  Created by Лада Зудова on 03.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue: Double = 300
    
    var body: some View {
        VStack {
            Text("Марафон \(Text("по SwiftUI").bold()) \(Text("Отцовский пинок").font(.largeTitle).foregroundColor(.pink))")
                .font(.footnote)
                .foregroundColor(.blue)
                .frame(width: CGFloat(sliderValue), height: .infinity, alignment: .center)
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(
                            LinearGradient(
                                gradient: .init(colors: [.blue, .pink]),
                                  startPoint: .init(x: 0, y: 0),
                                  endPoint: .init(x: 1, y: 1)
                                ),
                            style: StrokeStyle(
                                lineWidth: 3,
                                dash: [20, 20]
                            )
                        )
                }
            Slider(value: $sliderValue, in: 100...300)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
