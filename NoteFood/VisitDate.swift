//
//  VisitDate.swift
//  NoteFood
//
//  Created by juri on 2023/04/05.
//

import SwiftUI

let currentCalendar = Calendar.current
let screen = UIScreen.main.bounds

struct Visit {

    let locationName: String
    let tagColor: Color
    let arrivalDate: Date
    let departureDate: Date

    var duration: String {
        arrivalDate.timeOnlyWithPadding + " ➝ " + departureDate.timeOnlyWithPadding
    }

}

extension Visit: Identifiable {

    var id: Int {
        UUID().hashValue
    }

}

extension Visit {

    static func mock(withDate date: Date) -> Visit {
        Visit(locationName: "Apple Inc",
              tagColor: .randomColor,
              arrivalDate: date,
              departureDate: date.addingTimeInterval(60*60))
    }

    static func mocks(start: Date, end: Date) -> [Visit] {
        currentCalendar.generateVisits(
            start: start,
            end: end)
    }

}

private extension Calendar {

    func generateVisits(start: Date, end: Date) -> [Visit] {
        var visits = [Visit]()

        enumerateDates(
            startingAfter: start,
            matching: .everyDay,
            matchingPolicy: .nextTime) { date, _, stop in
            if let date = date {
                if date < end {
                    for _ in 0..<Int.random(in: visitCountRange) {
                        visits.append(.mock(withDate: date))
                    }
                } else {
                    stop = true
                }
            }
        }

        return visits
    }

}
