//
//  ContentView.swift
//  AppleMusic16
//
//  Created by Igor Kuzmin on 27.01.2022.
//

import SwiftUI

struct AppleMusic16: View {

    @State var isEditable = false
    @State var buttonText = "Править"

    var body: some View {
        TabView {
            NavigationView {
                VStack {
                Spacer()
                    if !isEditable {
                        MediaLibrary()
                    } else {
                        Categories()
                    }
                Spacer()
                MiniPlayer()
                Divider()
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
                Text("Здесь будет поиск")
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
        AppleMusic16()
    }
}
