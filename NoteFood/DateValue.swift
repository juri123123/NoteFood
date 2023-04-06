//
//  DateValue.swift
//  NoteFood
//
//  Created by juri on 2023/04/05.
//

import SwiftUI

//Date Value Model

struct DateValue: Identifiable {
    var id = UUID().uuidString
    var day: Int
    var date: Date
}
