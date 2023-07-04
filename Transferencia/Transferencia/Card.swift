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
                        .foregroundColor(Color.white)
                        .font(.title2)
                }.hLeanding()
                
            }
            Card()
        }.vTop()
            .preferredColorScheme(.dark)
    }
    //Card
    @ViewBuilder
    func Card()-> some View{
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
            VStack{
                HStack{
                    Text("....7856").foregroundColor(Color.black)
                        .font(.callout)
                        .fontWeight(.semibold)
                }.hLeanding()
                
                HStack(spacing: -12){
                    Text("Hola")
                        .foregroundColor(Color.black)
                        .fontWeight(.semibold)
                        .hLeanding()
                        .font(.title3)
                    
                }.vBottom()
                
            }.vTop()
            .hLeanding()
            .padding(.vertical,20)
            .padding(.horizontal)
            
        }.frame(height: 250)
            .padding()
            .clipped()
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}

extension View{
    func hLeanding()->some View{
        self
            .frame(maxWidth: .infinity,alignment: .leading)
    }
    func hTrailing()->some View{
        self
            .frame(maxWidth: .infinity,alignment: .trailing)
    }
    func hCenter()->some View{
        self
            .frame(maxWidth: .infinity,alignment: .center)
    }
    func vCenter()->some View{
        self
            .frame(maxHeight: .infinity,alignment: .center)
    }
    func vTop()->some View{
        self
            .frame(maxHeight: .infinity,alignment: .top)
    }
    func vBottom()->some View{
        self
            .frame(maxHeight: .infinity,alignment: .bottom)
    }
    
}
