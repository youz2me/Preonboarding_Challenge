//
//  main.swift
//  MyCreditManager
//
//  Created by YOUJIM on 2023/04/27.
//

import Foundation

struct Student {
    var name : String = ""
    var subject : [String: String] = [:]
}

var dataOfStudent : [Student] = Array(repeating: Student(), count: 0)


while (1 != 0) {
    print("원하는 기능을 입력해주세요")
    print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
    let input = readLine()!
    
    if Int(input) == 1 {
        print("추가할 학생의 이름을 입력해주세요")
        let nameToAdd = readLine()!
        AddStudent(name: nameToAdd)
    }
    else if Int(input) == 2 {
        print("삭제할 학생의 이름을 입력해주세요")
        let nameToDelete = readLine()!
        DeleteStudent(name: nameToDelete)
    }
    else if Int(input) == 3 {
        print("성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.")
        print("입력예) Mickey Swift A+")
        print("만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.")
        let infoToManage = readLine()!.components(separatedBy: " ").map {String($0)}
        AddScore(info: infoToManage)
    }
    else if Int(input) == 4 {
        print("성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요.")
        print("입력예) Mickey Swift")
        let infoToDelete = readLine()!.components(separatedBy: " ").map {String($0)}
        DeleteScore(info: infoToDelete)
    }
    else if Int(input) == 5 {
        print("평점을 알고싶은 학생의 이름을 입력해주세요")
        let nameToShow = readLine()!
        ShowScore(name: nameToShow)
    }
    else if input == "X" {
        print("프로그램을 종료합니다...")
        break
    }
    else {
        print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
    }
}



