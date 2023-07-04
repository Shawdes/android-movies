//
//  Card.swift
//  Transferencia
//
//  Created by IMac_21_Invitados on 03/07/23.
//

import SwiftUI

struct Card: View {
    var body: some View {
        VStack{
            HStack{
                Button{
                    
                }label: {
                    Image(systemName: "arrow.left")
                        .font(.title2)
                }
            }
        }.background(Color("BG"))
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
