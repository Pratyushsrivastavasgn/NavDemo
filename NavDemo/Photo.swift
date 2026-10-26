//
//  Photo.swift
//  NavDemo
//
//  Created by user@9 on 26/10/26.
//

import Foundation

struct Photo: Identifiable, Hashable, Codable {
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
}
