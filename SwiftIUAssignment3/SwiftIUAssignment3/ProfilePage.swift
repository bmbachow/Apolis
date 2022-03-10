//
//  ProfilePage.swift
//  SwiftIUAssignment3
//
//  Created by Brian Bachow on 3/7/22.
//

import SwiftUI

struct ProfilePage: View {
    @State var userSearchText = ""
    @State var userSearching = false
    @State var movieSearchText = ""
    @State var movieSearching = false
    @ObservedObject var movieSearchState = moviesearch()
    
    var placeholderArray = [Movie.init(id: 1, title: "")]
    var movie = ""
    
    
    private let users = [User(name: "Brian", age: 35, hobby: "Weightlifting", career: "iOS"),
                         User(name: "Shobhakar", age: 30, hobby: "Music", career: "Lead Developer"),
                         User(name: "Bruno", age: 21, hobby: "Anime", career: "iOS"),
                         User(name: "Steven", age: 25, hobby: "Concerts", career: "music production"),
                         User(name: "Aaron", age: 32, hobby: "Cooking", career: "Lead Developer"),
                         User(name: "Blaire", age: 27, hobby: nil, career: "iOS"),
                         User(name: "Asha", age: 31, hobby: "Crafts", career: "management"),
                         User(name: "Henry", age: 26, hobby: "Exercise", career: "Accounting"),
                         User(name: "Ben", age: 34, hobby: nil, career: "Sales")]
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("User Search").font(.title)
            SearchBar(searchText: $userSearchText, searching: $userSearching)
                .toolbar {
                    if userSearchText.count > 0 {
                        Button("Cancel") {
                            userSearchText = ""
                            withAnimation {
                                userSearching = false
                            }
                        }
                    }
                }
            
            List(users, id: \.id) { user in
                
                if user.name == userSearchText {
                    CustomCell(user: user)
                }
                
            }
            List{
                
                
                if self.movieSearchText.count > 0 {
                    
                    //this seems inefficient, even if it did work
                    ForEach(self.movieSearchState.movies ?? placeholderArray) { movie in
                        
                            VStack {
                                Text(movie.title ?? "")
                            }
                        }
                    }
            }
            
            Text("Movie Search").font(.title)
            SearchBar(searchText: $movieSearchText, searching: $movieSearching)
            Button {
                        Task {
                            movieSearchState.search(query: "Drive")
                        }
                    } label: {
                        Text("Search")
                    }
            List {
                
            }
        }
    }
}


struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}




