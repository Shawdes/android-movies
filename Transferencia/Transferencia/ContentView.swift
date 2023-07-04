//
//  ContentView.swift
//  Transferencia
//
//  Created by IMac_21_Invitados on 29/06/23.
//


import SwiftUI
import Combine

struct ContentView: View{
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = .gray
    }
    @State var segmento = 0
    
    @State private var Dato1 :String = ""
    @State private var Dato2 :String = ""
    @State private var Dato3 :String = ""
    
   
   
    
    var body: some View {
        
        ZStack{
            
            VStack{
               
                    
                    

                Picker("",selection: $segmento){
                    Text("Transferencia").tag(0)
                    //Text("Agregar Cuenta").tag(1)
                }.padding().pickerStyle(SegmentedPickerStyle())
                if(segmento==0){
                    pageone()
                }
                /*if(segmento==1){
                    pagetwo()
                    
                }*/
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Transferencia
struct pageone: View{
    @State private var Dato1 :String = ""
    @State private var Dato2 :String = ""
    @State private var Dato3 :String = ""
    
    @State var segmento = 0
    var body: some View{
        ZStack{
            VStack{
                TextField("Cuenta Destino",text: $Dato1)
                    .padding(9)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                TextField("Concepto",text: $Dato2)
                    .padding(9)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                TextField("Monto",text: $Dato3).keyboardType(.numberPad).onReceive(Just(Dato3)){
                    newValue in
                    let filtro = newValue.filter{
                        "0123456789".contains($0)
                    }
                    if filtro != newValue{
                        self.Dato3 = filtro
                    }
                }
                    .padding(9)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
            }.padding(.horizontal, 20)
                .padding(.top, 40)
            Spacer()
            
        }
        HStack{
            Button("Aceptar"){
                
            }
        }
    }
}

/*Agregar Banco
struct pagetwo: View{
    @State private var Dato1 :String = ""
    @State private var Dato2 :String = ""
    @State private var Dato3 :String = ""
    @State var segmento = 1
    var body: some View{
        ZStack{
            
            VStack{
                TextField("Numero de Cuenta",text: $Dato1)
                    .padding(9)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                TextField("Nombre de Banco",text: $Dato2)
                    .padding(9)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                TextField("Nombre Beneficiario",text: $Dato3)
                    .padding(9)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
            }.padding(.horizontal, 20)
                .padding(.top, 40)
            Spacer()
            
        }
        HStack{
            Button("Agregar"){
            }
        }
    }
}*/
