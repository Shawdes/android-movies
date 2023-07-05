//
//  CustomeCorner.swift
//  Transferencia
//
//  Created by IMac_21_Invitados on 05/07/23.
//

import SwiftUI

struct CustomeCorner: Shape{
    var corners: UIRectCorner
    var radius: CGFloat
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width:radius,height: radius))
        return Path(path.cgPath)
    }
}
