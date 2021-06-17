//
//  ResultState.swift
//  NewsApp
//
//  Created by Christopher on 2021-06-10.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
