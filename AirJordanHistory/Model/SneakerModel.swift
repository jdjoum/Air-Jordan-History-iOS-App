//
//  SneakerModel.swift
//  AirJordanHistory
//
//  Created by Julian-Justin Djoum on 1/23/21.
//  Copyright © 2021 Julian-Justin Djoum. All Rights Reserved.
//

import SwiftUI

// MARK: - SNEAKER DATA MODEL

struct Sneaker: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var designYear: String
    var definingMoment: String
}
