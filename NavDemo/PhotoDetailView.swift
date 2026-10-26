//
//  PhotoDetailView.swift
//  NavDemo
//
//  Created by user@9 on 26/10/26.
//

import SwiftUI

struct PhotoDetailView: View {
    let photo: Photo

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {

                // Photo image
                AsyncImage(url: URL(string: photo.url)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                } placeholder: {
                    Image(systemName: "photo")
                        .font(.system(size: 80))
                        .foregroundStyle(.blue)
                        .frame(maxWidth: .infinity)
                        .padding(.top, 40)
                }

                // Photo title
                Text(photo.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)

                // Album
                HStack {
                    Image(systemName: "square.stack.fill")
                        .foregroundStyle(.secondary)

                    Text("Album \(photo.albumId)")
                        .font(.title3)
                        .foregroundStyle(.secondary)
                }

                Divider()

                // Photo information
                VStack(alignment: .leading, spacing: 12) {
                    Text("Photo Details")
                        .font(.title2)
                        .fontWeight(.semibold)

                    LabeledContent("Photo ID", value: "\(photo.id)")
                    LabeledContent("Album ID", value: "\(photo.albumId)")
                    LabeledContent("Title", value: photo.title)
                    LabeledContent("URL", value: photo.url)
                }
            }
            .padding()
        }
        .navigationTitle("Photo Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        PhotoDetailView(photo: DataModel.sampledata[0])
    }
}
