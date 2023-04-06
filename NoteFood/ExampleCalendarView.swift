//
//  ExampleCalendarView.swift
//  NoteFood
//
//  Created by juri on 2023/04/05.
//
import SwiftUI
import ElegantCalendar

import ElegantCalendar

struct ExampleMonthlyCalendarView: View {

    // Start & End date should be configured based on your needs.
    let startDate = Date().addingTimeInterval(TimeInterval(60 * 60 * 24 * (-30 * 36)))
    let endDate = Date().addingTimeInterval(TimeInterval(60 * 60 * 24 * (30 * 36)))

    @ObservedObject var calendarManager = MonthlyCalendarManager(
        configuration: CalendarConfiguration(startDate: startDate,
                                             endDate: endDate))

    var body: some View {
        MonthlyCalendarView(calendarManager: calendarManager)
    }

}
