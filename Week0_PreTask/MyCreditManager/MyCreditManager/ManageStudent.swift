//
//  ManageStudent.swift
//  MyCreditManager
//
//  Created by YOUJIM on 2023/04/28.
//

import Foundation

func AddStudent(name: String) -> Int {
    var studentData : Student = Student()
    studentData.name = name
    
    for i in 0..<dataOfStudent.count {
        if dataOfStudent[i].name == studentData.name {
            print("\(studentData.name)는 이미 존재하는 학생입니다. 추가하지 않습니다.")
            return 0
        }
    }
    
    dataOfStudent.append(studentData)
    
    return 0
}

func DeleteStudent(name: String) -> Int {
    for i in 0..<dataOfStudent.count {
        if dataOfStudent[i].name == name {
            dataOfStudent.remove(at: i)
            print("\(name) 학생을 삭제하였습니다.")
            return 0
        }
    }
    print("\(name) 학생을 찾지 못했습니다.")
    return 0
}
