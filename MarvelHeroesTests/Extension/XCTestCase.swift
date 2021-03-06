//
//  File.swift
//  MarvelHeroesTests
//
//  Created by Alan Ostanik on 2018-05-20.
//  Copyright © 2018 Ostanik. All rights reserved.
//

import Foundation
import XCTest
@testable import MarvelHeroes

class BundleHack {}

extension XCTestCase {
    enum AnyError: Error {
        case any
    }

    func loadObjectFromJSON<T: Codable>(withFileNamed name: String) -> T? {
        guard let path = Bundle(for: BundleHack.self).url(forResource: name, withExtension: "json"), let data = try? Data(contentsOf: path) else { return nil}
        let encoder = JSONDecoder()
        guard let result = try? encoder.decode(T.self, from: data) else {return nil}
        return result
    }
}
