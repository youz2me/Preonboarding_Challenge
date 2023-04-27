//
//  ManageScore.swift
//  MyCreditManager
//
//  Created by YOUJIM on 2023/04/28.
//

import Foundation

func AddScore(info: Array<String>) -> Int {
    if info.count != 3 {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        return 0
    }
    
    for i in 0..<dataOfStudent.count {
        if dataOfStudent[i].name == info[0] {
            dataOfStudent[i].subject.updateValue(info[2], forKey: info[1])
            print("\(info[0]) 학생의 \(info[1]) 과목이 \(info[2])로 추가(변경)되었습니다.")
            return 0
        }
    }
    
    return 0
}

func DeleteScore(info: Array<String>) -> Int {
    if info.count != 2 {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        return 0
    }
    for i in 0..<dataOfStudent.count {
        if dataOfStudent[i].name == info[0] {
            dataOfStudent[i].subject[info[1]] = nil
            print("\(info[0]) 학생의 \(info[1]) 과목의 성적이 삭제되었습니다.")
            return 0
        }
    }
    
    print("\(info[0]) 학생을 찾지 못했습니다.")
    return 0
}

func ShowScore(name: String) {
    var total = 0.0
    
    for i in 0..<dataOfStudent.count {
        if dataOfStudent[i].name == name {
            for (key, value) in dataOfStudent[i].subject {
                print("\(key): \(value)")
                if value == "A+" {
                    total = total + 4.5
                }
                else if value == "A" {
                    total = total + 4.0
                }
                else if value == "B+" {
                    total = total + 3.5
                }
                else if value == "B" {
                    total = total + 3.0
                }
                else if value == "C+" {
                    total = total + 2.5
                }
                else if value == "C" {
                    total = total + 2.0
                }
                else if value == "D+" {
                    total = total + 1.5
                }
                else if value == "D" {
                    total = total + 1.0
                }
                else if value == "F" {
                    total = total + 0.0
                }
            }
            let grade = round((total / Double(dataOfStudent[i].subject.count)) * pow(10, 2)) / pow(10, 2)
            print("평점 : \(grade)")
        }
    }
    
}
