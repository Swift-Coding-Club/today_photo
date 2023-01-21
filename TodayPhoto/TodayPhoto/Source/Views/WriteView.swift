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
    @State private var date = Date()
    
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text("제목")
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                TextField(LocalizedStringKey(title), text: $title, prompt: Text(" 제목을 입력하세요."))
                    .frame(height: 40)
                    .background(.blue)
                    .cornerRadius(10)
                
                Text("설명")
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                TextField(LocalizedStringKey(subcription), text: $subcription, prompt: Text("오늘은 어떤 일이 있었나요? \("\n") 어떤 사진을 남기고 싶으셨나요?"))
                    .frame(height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .background(.blue)
                    .cornerRadius(10)
                    .lineLimit(50)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .fixedSize(horizontal: false, vertical: false)
            }
            .padding(.horizontal, 20)
            
        }
    }
}

struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView()
    }
}
