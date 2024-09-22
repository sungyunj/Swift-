/**==================================================================
 [1번 문제]
  - 함수 만들어 보기: 정수값을 한개 받아, 해당 정수가 짝수인지 여부를 판단하는 함수를
                  구현하기. (힌트: 짝수 -> 참 / 홀수 -> 거짓)
 
    (함수 실행 예시)
    isEvenNumber(num: 3)    // 거짓
    isEvenNumber(num: 4)    // 참
 ===================================================================**/

// 함수 정의 (구현)

func isEvenNumber(num: Int) -> Bool {
    return num % 2 == 0
}




// 함수 실행 (아래 주석 제거하고 실행해보기)

print("1번문제 결과 (1):", isEvenNumber(num: 3))
print("1번문제 결과 (2):", isEvenNumber(num: 4))

/**==================================================================
 [2번 문제]
  - Array(배열), Dictionary(딕셔너리), Set(집합)의 각각의 중요 특징과 차이점에 대해
    서술하고 간단한 예시 코드를 작성하기.
 ===================================================================**/

// 1) 배열(Array)
// 동일한 타입의 요소를 담을 수 있는 컬렉션
// 인덱스 순서가 자동으로 지정되며, 인덱스는 0부터 시작

let array = [1, 2, 3, 4, 5]



// 2) 딕셔너리(Dictionary)
// 키와 밸류의 쌍을 요소로 담을 수 있는 컬렉션
// 순서가 없고, 키(key)값은 유일해야하며, 동일한 타입의 쌍만 담을 수 있음
// 키(key)값은 해셔블(Hashable)해야함

let dic = ["A": "Apple", "B": "Banana"]



// 3) 집합(Set)
// 동일한 타입의 요소를 담을 수 있는, 순서가 없는 컬렉션
// 순서가 없고, 각 요소가 해셔블(Hashable)해야함

let set: Set = [1, 2, 3, 4, 5]


// 공통점
// 1) 동일한 타입 또는 동일한 타입의 쌍을 담을 수 있음
// 2) 위의 모든 컬렉션은 값타입으로 메모리의 스택에 저장

// 차이점
// 1) 배열은 순서가 있고, 딕셔너리와 집합(Set)은 순서가 없음
// 2) 딕셔너리에서는 키(key)값이 해셔블해야하고, 집합(Set)에서는 요소가 해셔블 해야함



/**==================================================================
 [3번 문제]
  - 아래의 personName변수에 들어있는 값을 if let 바인딩으로 언래핑해서 이름을
    출력하기.
 ===================================================================**/

class Person {
    var name: String? = "홍길동"
}

var personName = Person().name


// 옵셔널 바인딩 코드 작성

if let name = personName {
    print(name)
}

// 위와 같이 해도 되고, 이름만 출력해보는 것이 목적이라면,
// personName이라는 변수를 거치지 않고 직접 생성하자마자 옵셔널 바인딩을 하는
// 아래와 같은 방법도 가능

if let name = Person().name {
    print(name)
}



/**==================================================================
 [4번 문제]
  - 아래의 a상수의 옵셔널 값을 switch문으로 이용해서 꺼내서 출력.
    (힌트. some과, none 그리고, 연관값을 꺼내는 방법을 이용하기.)
 ===================================================================**/


let a: Int? = 7


// (주석 해제하고) 나머지 전부 구현

switch a {
case .some(let num):
    print(num)
case .none:
    //print("nil 입니다.")
    break
}


// 옵셔널은 일단 열거형
// 따라서, 열거형의 케이스인 .some / .none으로 먼저 분기처리하고
// 내부의 값을 let num 으로 바인딩해서 꺼낼 수가 있다. (열거형 케이스 패턴)



/**==================================================================
 [5번 문제]
  - 클래스나 구조체에서 initializer(생성자)의 역할이 무엇인가요? 간단하게 서술.
 ===================================================================**/

// 생성자의 역할은 결국,
// 클래스나 구조체의 모든 저장 속성(각각의 데이터 필드라고 보면됨)에
// 초기값을 설정하여 인스턴스를 생성할 수 있도록 하는 것.
// (물론 실제 인스턴스를 메모리에 생성하는 과정까지 포함)

// 즉, 저장속성의 메모리에 모든 값들을 갖게 만들어,
// 각각의 인스턴스가 모든 데이터(저장 속성의 모든 항목 - Field)를 가지고
// 데이터로써의 역할을 제대로 할 수 있도록 만들어 주는 함수라고 보면 됨.







/**==================================================================
 [6번 문제]
  - 구조체의 멤버와이즈 이니셜라이저(생성자)가 무엇인가? 개념에 대해 간단하게
    서술하고, (자유롭게) 예제 코드를 만들어 설명.
    (힌트. Memberwise (멤버에 관한))
 ===================================================================**/

// 구조체의 경우,
// 생성자를 직접적으로 구현하지 않더라도, 모든 저장속성 값을 초기화할 수 있는 생성자를 자동으로
// 구현, 제공해줌 - (멤버와이즈 이니셜라이저)


struct Dog {
    var name: String
    var weight: Double
}

//Dog(name: <#T##String#>, weight: <#T##Double#>)



// 멤버와이즈 이니셜라이저로 인해, 구조체 사용시 (생성자의 직접 구현 없이)
// 보다 간편하게 사용 가능



/**==================================================================
 [7번 문제]
  - 클래스와 구조체의 근본적인 메모리 구조의 차이점에 대해서, 간단하게 설명.
    (힌트. Heap(힙)과 Stack(스택)을 참고적으로)
 ===================================================================**/


// 1) 클래스
// 실제 인스턴스(데이터)는 힙에 저장되고, 그 인스턴스를 가리키는 변수에 메모리 주소가 담겨 스택에 저장됨
// (참조 타입)

// 2) 구조체
// 실제 인스턴스의 데이터 자체가 스택에 저장됨
// (값 타입)


/**==================================================================
 앨런Swift문법 마스터 스쿨 주차 시험 참조
 ===================================================================**/