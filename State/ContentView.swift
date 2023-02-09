//
//  ContentView.swift
//  State
//
//  Created by Jelson J on 09/02/2023.
//
// LAYOUT DECLARATIVE
// STATE
// BINDING

import SwiftUI

struct ContentView: View {
    
    //@State var showAlert = false
    @State var changeText = false
    @State var stepperValue = 50
    
    var body: some View {
        VStack {
            
            HStack{
                Button("Primary") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding(.vertical, 20)
                
                Button(action: {}){
                   Text("Secondary")
                        .font(.subheadline)
                        .foregroundColor(Color.mint)
                }
            }
            
            //Spacer()
            
            Stepper(value: $stepperValue, in: 1...50){
                Text("My stepper number is \(self.stepperValue)")
            }
            
            changeText ?
                Text("Show text colour Blue 😀 🚀")
                .font(.title)
                .foregroundColor(Color.blue)
            :
            
            Text("Do not show text colour Red 😣")
            .font(.title)
            .foregroundColor(Color.red)
            
            
            Button(action: {
                
                self.changeText = !self.changeText
            }) {
                Text("Click Me")
                    .font(.subheadline)
                    .foregroundColor(Color.cyan)
            }

            
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Learn ho to work with state")
                .bold()
                .font(.title)
                .foregroundColor(Color.indigo)
        }
        .padding(15)
        
//        .alert(isPresented: $showAlert) {() -> Alert in
//            return Alert(title: <#T##Text#>("Hello"), message: Text("World!"), dismissButton: .default(Text("Ok....")))
//        }
    }
    
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
