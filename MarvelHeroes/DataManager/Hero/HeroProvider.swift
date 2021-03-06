//
//  HeroesProvider.swift
//  MarvelHeroes
//
//  Created by Alan Ostanik on 2018-05-19.
//  Copyright © 2018 Ostanik. All rights reserved.
//

import Foundation

protocol HeroesProvider {
    typealias CompletionHandler = (_ result: DataContainer<Hero>?, _ error: Error?) -> Void
    func fetchHero(startName: String, offset: Int, completionHandler: @escaping CompletionHandler)
}
