//
//  lesson4.swift
//  Moonshot
//
//  Created by Raghavendra Mirajkar on 11/05/24.
//

import SwiftUI

struct User : Codable {
    let name : String
    let address : Address
}

struct Address : Codable {
    let street : String
    let city : String
}



struct lesson4: View {
    @State var showSheet = false
    
    var body: some View {
        Button {
            print("Hello")
            
            let input = """
                        {
                            "name" : "Taylor Swift",
                        "address" : {
                            "street" : "555, Taylor Swift Avenue",
                            "city" : "Nashvile"
                            }
                        }
                        """
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            
            if let user = try? decoder.decode(User.self, from: data) {
                print(user)
                showSheet.toggle()
            }
            
        } label: {
            Text("Decode JSON")
        }
        .sheet(isPresented: $showSheet, content: {
            Moonshot.lesson1()
        })

    }
}

struct showSheet : View {
    @State var user : User
    
    init(user: User) {
        self.user = user
    }
    
    var body: some View {
        VStack {
            Text("Hello")
            Button {
                print(user)
            } label: {
                Text("Tap me")
            }

        }
    }
    
}

#Preview {
    lesson4()
}


