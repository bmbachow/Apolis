//
//  CustomCell.swift
//  SwiftIUAssignment3
//
//  Created by Brian Bachow on 3/8/22.
//

import SwiftUI

struct CustomCell: View {

    private var user : User!
    
    init(user: User){
        self.user = user
    }
    
    var body: some View {
        HStack {
            Text(self.user.name)
            Text("|")
            Text(self.user.career ?? "")
            Text("|")
            Text(self.user.hobby ?? "")
            
        }
    }
}

struct CustomCell_Previews: PreviewProvider {
    static var previews: some View {
        CustomCell(user: User(name: "Brian", age: 35, hobby: "Weightlifting", career: "iOS"))    }
}
