//
//  ContentView.swift
//  AppleMusic16
//
//  Created by Igor Kuzmin on 27.01.2022.
//

import SwiftUI

struct TabViewMediateka: View {

    @State var isEditable = false
    @State var buttonText = "Править"

    var body: some View {
        TabView {
            NavigationView {
                VStack {
                Spacer()
                    if !isEditable {
                        Mediateka()
                    } else {
                        Categories()
                    }
                Spacer()
                MiniPlayer()
                }
                .navigationTitle("Медиатека")
                .navigationBarItems(
                    trailing:
                        NavigationLink(destination: Categories()) {
                            Button(buttonText) {
                                if !isEditable {
                                    buttonText = "Назад"
                                    isEditable = !isEditable
                                } else {
                                    buttonText = "Править"
                                    isEditable = !isEditable
                                }
                            }
                        }
                )
                .environment(\.editMode, .constant(EditMode.active))
            }
                    .tabItem {
                        Image(systemName: "music.note.house.fill")
                        Text("Медиатека")
                    }
                Text("Здесь будет радио")
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                Text("Здесь будет поискк")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewMediateka()
    }
}
