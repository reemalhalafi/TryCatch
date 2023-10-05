//
//  ContentView.swift
//  TryCatch
//
//  Created by Reem Alhalafi on 20/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var value = 0
    let step = 1
    let range = 1...50
  
    var body: some View {
        VStack {
            Image("water-tracker")
                .resizable()
                .scaledToFit()
                .frame(width: 300.0, height: 300.0, alignment: .top)  
            Text("Water Tracker 💦")
                .font(.title)
                .foregroundColor(.black)
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Apple Health")
            }
        }
        Stepper(value: $value,
                in: range,
                step: step) {
            Text("Cups drink per day:\(value)")
        }
        Button("Continue") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
            }}
#Preview {
    ContentView()
}
