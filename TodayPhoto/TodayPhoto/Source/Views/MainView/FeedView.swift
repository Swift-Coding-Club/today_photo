//
//  FeedView.swift
//  TodayPhoto
//
//  Created by 김동윤 on 2023/02/16.
//

import SwiftUI

struct FeedView: View {
    
    @State private var feedViewToggle = true
    
    var body: some View {
        
        let feedViewHeight = CGFloat(623)
        let feedViewWidth = CGFloat(UIScreen.main.bounds.width - 40)
        
        Button {
            feedViewToggle.toggle()
        } label: {
            ZStack {
                if feedViewToggle {
                    Image("testImg")
                        .resizable()
                        .scaledToFill()
                }
                VStack {
                    // 날짜 text
                    HStack {
                        VStack(alignment: .center) {
                            Text("13")
                                .font(Font.pretendard(size: feedViewToggle ? 80 : 60, family: .semiBold))
                            Text("Thursday")
                                .font(Font.pretendard(size: feedViewToggle ? 22 : 16, family: .regular))
                        }
                        .padding(EdgeInsets(top: 25, leading: 30, bottom: 0, trailing: 0))
                        .foregroundColor(feedViewToggle ? Color.white : Color.primarPurpleDark)
                        .shadow(radius: feedViewToggle ? 10 : 0)
                        .animation(.spring(), value: feedViewToggle)
                        Spacer()
                    }
                    if !feedViewToggle {
                        // 제목 text
                        HStack {
                            
                            Text("일기 제목")
                                .font(Font.pretendard(size: 24, family: .bold))
                                .foregroundColor(Color.primarPurpleDark)
                                .padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 0))
                            
                            Spacer()
                        }
                        // 일기 본문 text
                        Text("하여도 기쁘며, 인간이 천자만홍이 보배를 것이다. 가치를 가슴에 때에, 청춘에서만 꽃이 힘차게 바이며, 사는가 몸이 있다. 방지하는 내려온 이상의 수 온갖 피부가 것은 있는 따뜻한 끓는다. 있는 꽃이 생생하며, 물방아 들어 피고 피가 이는 사막이다. 든 우리 뼈 봄바람이다.")
                            .font(Font.pretendard(size: 20, family: .medium))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.primaryBlackDark)
                            .padding(EdgeInsets(top: 1, leading: 30, bottom: 0, trailing: 30))
                    }
                    Spacer()
                    // 지역, 노래 label
                    HStack {
                        VStack(alignment: .leading) {
                            Label("서울특별시 종로구", image: "mapPin\(feedViewToggle ? "White" : "Black")")
                            Label("노래 - 가수", image: "music\(feedViewToggle ? "White" : "Black")")
                        }
                        .font(Font.pretendard(size: 18, family: .regular))
                        .foregroundColor(feedViewToggle ? Color.white : Color.primaryBlackDark)
                        .padding(EdgeInsets(top: 0, leading: 30, bottom: 30, trailing: 0))
                        Spacer()
                    }
                }
                .frame(width: feedViewWidth, height: feedViewHeight)
            }
            .frame(width: feedViewWidth, height: feedViewHeight)
            .clipped()
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 15)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
