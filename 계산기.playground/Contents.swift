import UIKit

enum Operator {
    case add
    case subtract
    case multiply
    case divide
    case remainder
}
// 클래스 정의
class Calculator {

    func calculate(operation: Operator, firstNum: Double, secondNum: Double) -> Double {
        switch operation {
        case .add:
            return firstNum + secondNum
        case .subtract:
            return firstNum - secondNum
        case .multiply:
            return firstNum * secondNum
        case .divide:
            if secondNum == 0 {
                print("0으로 나눌 수 없습니다. 다시 시도하세요.")
                return 0
            }
            return firstNum / secondNum
        case .remainder:
            return firstNum.truncatingRemainder(dividingBy: secondNum)
        }
    }
}
// 인스턴스생성 : 칼큘레이터 클래스를 사용하기 위함
// 정의한 클래스를 호출한다
let calculator = Calculator()
// 선언된 인스턴스를 통해서 칼큘레이트 함수 호출
let addResult = calculator.calculate(operation: .add, firstNum: 20, secondNum: 10)
let subtract = calculator.calculate(operation: .subtract, firstNum: 20, secondNum: 10)
let multiply = calculator.calculate(operation: .multiply, firstNum: 20, secondNum: 10)
let divide = calculator.calculate(operation: .divide, firstNum: 30, secondNum: 0)
let result = calculator.calculate(operation: .remainder, firstNum: 10.5, secondNum: 3.2)
print("결과: \(result)")


