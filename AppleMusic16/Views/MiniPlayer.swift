//
//  MiniPlayer.swift
//  AppleMusic16
//
//  Created by Igor Kuzmin on 27.01.2022.
//

import SwiftUI

struct MiniPlayer: View {

    let albumLogo = UIImage(named: "cover")!

    var body: some View {
        HStack {
            Spacer()
            Image(uiImage: albumLogo)
                .resizable()
                .frame(width: 48, height: 48)
                .cornerRadius(8)

            Text("Radiohead - Orange juice")

            Spacer()

            Button {
                print("Play buttton tapped")
            } label: {
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.black)
            }

            Button {
                print("Next buttton tapped")
            } label: {
                Image(systemName: "forward.fill")
                    .resizable()
                    .frame(width: 48, height: 24)
                    .foregroundColor(.black)
            }

            Spacer()
        }

    }
}

struct MiniPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayer()
    }
}
