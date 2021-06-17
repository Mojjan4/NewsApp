//
//  NewsResponse.swift
//  NewsApp
//
//  Created by Christopher on 2021-06-10.
//

import Foundation


// MARK: - Welcome
struct NewsResponse: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable {
    let id = UUID()
    let author: String?
    let url: String?
    let source, title, articleDescription: String?
    let image: String?
    let date: Date?

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}

extension Article {
    static var dummyData: Article {
        .init(author: "Jake Offenhartz",
              url: "http://gothamist.com/news/teenager-killed-four-injured-after-speeding-tesla-driver-crashes-mill-basin-senior-living-facility",
              source: "Gothamist",
              title: "Teenager Killed, Four Injured After Speeding Tesla Driver Crashes Into Mill Basin Senior Living Facility",
              articleDescription:"The vehicle then struck a metal fence, two garbage dumpsters, and a retaining wall, before finally coming to a stop against a wall of the Sunrise assisted living facility. [ more › ]",
              image: "https://cms.prod.nypr.digital/images/299302/fill-1200x650/",
              date: Date())
    }
}

