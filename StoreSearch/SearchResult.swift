//
//  SearchResult.swift
//  StoreSearch
//
//  Created by Bill Yu on 11/26/15.
//  Copyright © 2015 Bill Yu. All rights reserved.
//

import Foundation

func < (lhs: SearchResult, rhs: SearchResult) -> Bool {
    return lhs.name.localizedStandardCompare(rhs.name) == .OrderedAscending
}

class SearchResult {
    var name = ""
    var artistName = ""
    var artworkURL60 = ""
    var artworkURL100 = ""
    var storeURL = ""
    var kind = ""
    var currency = ""
    var price = 0.0
    var genre = ""
    
    func kindForDisplay() -> String {
        switch kind {
        case "album": return NSLocalizedString("", comment: "Localized kind: ")
        case "audiobook": return NSLocalizedString("", comment: "Localized kind: ")
        case "book": return NSLocalizedString("", comment: "Localized kind: ")
        case "ebook": return NSLocalizedString("", comment: "Localized kind: ")
        case "feature-movie": return NSLocalizedString("", comment: "Localized kind: ")
        case "music-video": return NSLocalizedString("", comment: "Localized kind: ")
        case "podcast": return NSLocalizedString("", comment: "Localized kind: ")
        case "software": return NSLocalizedString("", comment: "Localized kind: ")
        case "song": return NSLocalizedString("", comment: "Localized kind: ")
        case "tv-episode": return NSLocalizedString("", comment: "Localized kind: ")
        default: return kind
        }
    }
}