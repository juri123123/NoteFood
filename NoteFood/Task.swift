//
//  Task.swift
//  NoteFood
//
//  Created by juri on 2023/04/06.
//

import Foundation
import AudioToolbox

struct Food: Identifiable {
    var id = UUID().uuidString
    var carbo: Double = 0.0//탄수화물
    var protein: Double = 0.0//단백질
    var province: Double = 0.0//지방
    var water: Int = 0//수분
    var today: Date = Date()
//    var noteDate: Date = Date()
}

struct FoodMetaData: Identifiable {
    var id = UUID().uuidString
    var food: [Food]
    var foodDate: Date
}

//struct Task: Identifiable {
//    var id = UUID().uuidString
//    var title: String
//    var time: Date = Date()
//}


//struct TaskMetaData: Identifiable {
//    var id = UUID().uuidString
//    var task: [Task]
//    var taskDate: Date
//}


func getSampleDate(offset: Int) -> Date {
    let calendar = Calendar.current
    
    let date = calendar.date(byAdding: .day, value: offset, to: Date())
    
    return date ?? Date()
}


var foods: [FoodMetaData] = [
    FoodMetaData(food: [
        Food(carbo: 3.2, protein: 2.1, province: 1.0, water: 300)
    ], foodDate: getSampleDate(offset: 1)),
    
    FoodMetaData(food: [
        Food(carbo: 3.2, protein: 2.1, province: 1.0, water: 300)
    ], foodDate: getSampleDate(offset: -3)),
    
    FoodMetaData(food: [
        Food(carbo: 3.2, protein: 2.1, province: 1.0, water: 300)
    ], foodDate: getSampleDate(offset: -8)),
    
    FoodMetaData(food: [
        Food(carbo: 3.2, protein: 2.1, province: 1.0, water: 300)
    ], foodDate: getSampleDate(offset: 10)),
    
    FoodMetaData(food: [
        Food(carbo: 3.2, protein: 2.1, province: 1.0, water: 300)
    ], foodDate: getSampleDate(offset: -22)),
    
    FoodMetaData(food: [
        Food(carbo: 3.2, protein: 2.1, province: 1.0, water: 300)
    ], foodDate: getSampleDate(offset: 15))
]
//var tasks: [TaskMetaData] = [
//
//    TaskMetaData(task: [
//        Task(title: "Talk to iJustine")
//    ], taskDate:   getSampleDate(offset: 1)),
//    
//    TaskMetaData(task: [
//    Task(title: "Task to Jen Wzarik")
//    ], taskDate: getSampleDate(offset: -3)),
//    
//    TaskMetaData(task: [
//    Task(title: "Metting with tim cook")
//    ], taskDate: getSampleDate(offset: -8)),
//    
//    TaskMetaData(task: [
//    Task(title: "Next Verion of SwiftUI")
//    ], taskDate: getSampleDate(offset: 10)),
//    
//    
//    TaskMetaData(task: [
//    Task(title: "Task to Jen Wzarik 222")
//    ], taskDate: getSampleDate(offset: -22)),
//    
//    TaskMetaData(task: [
//    Task(title: "Metting with tim cook 222 ")
//    ], taskDate: getSampleDate(offset: 15)),
//    
//    TaskMetaData(task: [
//    Task(title: "Next Verion of SwiftUI222 ")
//    ], taskDate: getSampleDate(offset: -20)),
//    
//    TaskMetaData(task: [
//    Task(title: "Metting with tim cook 333 ")
//    ], taskDate: getSampleDate(offset: 15)),
//    
//    TaskMetaData(task: [
//    Task(title: "Next Verion of SwiftUI 333 ")
//    ], taskDate: getSampleDate(offset: -20)),
//
//]
//
//
