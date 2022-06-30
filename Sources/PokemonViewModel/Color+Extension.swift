//
//  Color+Extension.swift
//  PokedexSwiftUI (iOS)
//
//  Created by Brandon De Jesus Escalante Nava on 23/06/22.
//

import Foundation
import SwiftUI

public extension Color {
    init(rgb: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((rgb >> 16) & 0xff) / 255,
            green: Double((rgb >> 08) & 0xff) / 255,
            blue: Double((rgb >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
