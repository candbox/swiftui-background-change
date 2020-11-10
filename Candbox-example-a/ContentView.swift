//
//  ContentView.swift
//  Candbox-example-a
//  Candbox@Wang
//  Created by acumen on 2020/11/10.
//

import SwiftUI

struct ContentView: View {
    @State var state = Examples()
    var body: some View {
        let screenWidth = UIScreen.Width
        NavigationView{
            VStack {
                Text("SwiftUI背景色修改例子").font(.title)
            }.navigationBarTitle("Swift background change example",displayMode: .inline)
        }
        Spacer()
        HStack{
            Spacer()
            VStack {
                ButtonSet(keyname: "A", keytag: 1, keystyle: 0.2, keywidth: screenWidth, state: $state)
                Spacer()
                ButtonSet(keyname: "B", keytag: 2, keystyle: 0.2,keywidth: screenWidth, state: $state)
                Spacer()
                ButtonSet(keyname: "C", keytag: 3, keystyle: 0.5,keywidth: screenWidth, state: $state)
            }
            VStack {
                ButtonSet(keyname: "D", keytag: 4, keystyle: 0.2,keywidth: screenWidth, state: $state)
                Spacer()
                ButtonSet(keyname: "E", keytag: 5, keystyle: 0.2,keywidth: screenWidth, state: $state)
                Spacer()
                ButtonSet(keyname: "F", keytag: 6, keystyle: 0.6,keywidth: screenWidth, state: $state)
            }
            VStack {
                ButtonSet(keyname: "G", keytag: 7, keystyle: 0.5,keywidth: screenWidth, state: $state)
                Spacer()
                ButtonSet(keyname: "H", keytag: 8, keystyle: 0.6,keywidth: screenWidth, state: $state)
                Spacer()
                ButtonSet(keyname: "I", keytag: 9, keystyle: 0.7,keywidth: screenWidth, state: $state)
            }
            VStack {
                ButtonSet(keyname: "J", keytag: 10, keystyle: 0.5,keywidth: screenWidth, state: $state)
                Spacer()
                ButtonSet(keyname: "K", keytag: 11, keystyle: 0.6,keywidth: screenWidth, state: $state)
                Spacer()
                ButtonSet(keyname: "L", keytag: 12, keystyle: 0.7,keywidth: screenWidth, state: $state)
            }
            Spacer()
        }

        List {
            Text("Play button(text) sound")
            Text("You can change the backgound color and opacity value")
            Text("Site: www.candbox.cn")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
