//
//  Card.swift
//  Transferencia
//
//  Created by IMac_21_Invitados on 03/07/23.
//

import SwiftUI

struct Card: View {
    @State var animations:[Bool]=Array(repeating: false, count: 10)
    @State private var Dato1 :String = ""
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
            //Animation
            GeometryReader{proxy in
                let maxY=proxy.frame(in: .global).maxY
                Card()
                    .offset(y: animations[0] ? 0 : -maxY)
                
            }
            
            
            HStack{
                Text("Transferencia")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .offset(x:animations[1] ? 0:-200)
                
            }
            
            GeometryReader{Proxy in
                let size = Proxy.size
                
                ZStack{
                    
                    Color.gray
                        .clipShape(CustomeCorner(corners: [.topLeft,.topRight], radius: 40))
                        .padding(.top)
                        
                        .vBottom()
                    TextField("Cuenta Destino",text: $Dato1)
                        .padding(10)
                        .background(Color.white.opacity(0.2))
                        .cornerRadius(12)
                }.frame(height: animations[2] ? nil : 0)
                
            }
            .hCenter()
                .vCenter()
        }.vTop()
        .hCenter()
            .preferredColorScheme(.dark)
            .onAppear(perform: animateScreen)
    }
    func animateScreen(){
        withAnimation(.interactiveSpring(response: 1.3,dampingFraction: 0.7,blendDuration: 0.7)){
            animations[0] = true
        }
            withAnimation(.easeInOut(duration: 0.7)){
                animations[1] = true
            }
        withAnimation(.interactiveSpring(response: 1.3,dampingFraction: 0.7,blendDuration: 0.7)){
            animations[2] = true
        }
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
                    Text("Salazar Ovilla Angel de Jesus")
                        .foregroundColor(Color.black)
                        .fontWeight(.semibold)
                        .hLeanding()
                        .font(.callout)
                    Circle()
                        .stroke(.pink,lineWidth:1)
                        .frame(width: 30,height: 30)
                    Circle()
                        .stroke(.blue,lineWidth:1)
                        .frame(width: 30,height: 30)
                    
                }.vBottom()
                
            }.vTop()
            .hLeanding()
            .padding(.vertical,10)
            .padding(.horizontal)
            
            //MArk top ring
            Circle()
                .stroke(Color.pink.opacity(0.5),lineWidth: 18)
                .offset(x: 130,y: -120)
        }
        .clipped()
        .frame(height: 250)
            .padding()
            
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
