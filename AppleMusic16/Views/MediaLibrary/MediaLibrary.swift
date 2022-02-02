//
//  Mediateka.swift
//  AppleMusic16
//
//  Created by Igor Kuzmin on 27.01.2022.
//

import SwiftUI

struct MediaLibrary: View {

    var body: some View {
            VStack {
                Text("Ищете свою музыку?")
                    .font(.title)
                    .bold()

                Text("Здесь появится купленная вами в iTunes музыка")
                    .font(.title3)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
            .padding()
    }
}

struct Mediateka_Previews: PreviewProvider {
    static var previews: some View {
        MediaLibrary()
    }
}
