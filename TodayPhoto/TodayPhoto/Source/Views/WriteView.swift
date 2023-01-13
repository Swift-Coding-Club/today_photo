//
//  WriteView.swift
//  TodayPhoto
//
//  Created by 황석현 on 2023/01/14.
//

import SwiftUI

struct WriteView: View {
    
    @State private var title: String = ""
    @State private var subcription: String = ""
    var body: some View {
        VStack{
            Text("yyyy.mm.dd")
            Text("제목")
                .multilineTextAlignment(.leading)
            TextField("제목을 입력하세요", text: $title)
                .frame(width: 250, height: 50, alignment: .center)
            Text("설명")
            TextField("오늘은 어떤 일이 있었나요? 어떤 사진을 남기고 싶으셨나요?", text: $subcription)
                .frame(width: 250, height: 50, alignment: .center)
        }
    }
}

struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView()
    }
}
