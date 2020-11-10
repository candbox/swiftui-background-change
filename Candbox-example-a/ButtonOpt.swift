//
//  ButtonOpt.swift
//  Candbox-example-a
//  Candbox@Wang
//  Created by acumen on 2020/11/10.
//

import SwiftUI
import AVFoundation

class ClickSound {
    //you can change the SystemSoundID
    private var soundID: SystemSoundID = 1104
    public init() {}
    func play() {
        //this is fast way to play inner sound for button. dont use other sound file
        AudioServicesPlaySystemSound(soundID)
    }
}

struct ButtonSet: View {
    //init() 初始一个声音
    let sound = ClickSound()
    //keyname是多语言显示字符
    let keyname: String
    //valname是功能编号
    let keytag: Int
    //bgtyple是背景颜色
    let keystyle: Double
    //keywidth是屏幕宽度
    let keywidth: CGFloat
    //设置按键宽度
    var btnwidth: CGFloat {
       return keywidth / 4 - 20
    }
    @Binding var state: Examples
    //完美解决背景色修改和透明色修改
    //here you can refe to the opacity and backgroud that you need
    var body: some View {
        Text(keyname)
            .font(.system(size: 22.0))
            .foregroundColor(keytag == 1 ? .blue : .black)
            .frame(width: btnwidth, height: 50).padding(.bottom,1)
            .background(keytag == 10 ? Color.blue.opacity(keystyle) : keytag == 11 ? Color.red.opacity(keystyle) : keytag == 12 ? Color.yellow.opacity(keystyle) : keytag == 1 ? Color.green.opacity(keystyle) : Color.gray.opacity(keystyle))
            .onTapGesture {
                //play button
                sound.play()
                //callback other function
                self.state.callback(self.keytag)
            }
    }
}

struct Examples {
    var curTag: Int = 0
    mutating func callback(_ number: Int) {
        print("The current keytag: \(curTag)")
        curTag = number
    }
}
