//
//  Categories.swift
//  AppleMusic16
//
//  Created by Igor Kuzmin on 27.01.2022.
//

import SwiftUI

struct CategoryItem: Hashable {
    let image: String
    let name: String
}

struct Categories: View {

    @State private var selection = Set<CategoryItem>()

    @State private var categoryItems: [CategoryItem] = [
        CategoryItem(image: "music.note.list", name: "Плейлисты"),
        CategoryItem(image: "music.mic", name: "Артисты"),
        CategoryItem(image: "square.stack", name: "Альбомы")
    ]

    var body: some View {
        List(selection: $selection) {
            ForEach(categoryItems, id:\.self) { item in
                HStack {
                    Image(systemName: "\(item.image)")
                    Text("\(item.name)")
                }
            }
            .onMove(perform: move)
        }
    }

    func move(fromOffsets source: IndexSet, toOffset destination: Int) {
        categoryItems.move(fromOffsets: source, toOffset: destination)
      }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories()
    }
}
