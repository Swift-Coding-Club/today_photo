//
//  FontExtension.swift
//  TodayPhoto
//
//  Created by 김동윤 on 2023/01/21.
//

import SwiftUI

extension Font {
    enum Family: String {
        case bold, semiBold, regular, medium
    }
    
    static func pretendard(size: CGFloat, family: Family) -> Font {
        return Font.custom("Pretendard-\(family.rawValue)", size: size)
    }
}
