import Cocoa
/*옵셔널 타입
 (값이 없을 수도 있는 타입이다)
 
 모든 타입의 뒤에 ? 물음표를 붙이면 옵셔널 타입이 된다.
 
 1) nil 대입 가능
 2) 자동 초기화 (값을 넣지 않을 시에 nil로 초기화)
 
 옵셔널 타입끼리의 연산은 불가능
 
 */

let num1: Int? = 2             // 간편표기
let num2: Optional<Int> = 0    // 정식문법
 

var num: Int?
var str: String? = "안녕하세요"

/*
 옵셔널값을 추출하는 4가지 방법
*/

// 1. 강제로 값을 추출(Forced Unwrapping): 값이 있다는 것이 확실할때 사용

print(str!)

// 2. if문으로 nil이 아니라는 것 확인한 후, 강제로 벗기기

if str != nil {
    print(str!)
}


/*
 3. 옵셔널 바인딩 (if  let 바인딩)
    옵셔널 바인딩 - 바인딩이 된다면, 특정 작업을 하겠다는 의미
 */

if let s = str {    // s라는 상수에 담긴다면    // nil
    print(s)
}


var optionalName: String? = "홍길동"


if let name = optionalName {
    print(name)
}

// 앱을 만들때 guard let 바인딩 많이 사용

func doSomething(name: String?) {
    guard let n = name else { return }
    print(n)
}

doSomething(name: "hello")

/*4. 닐 코얼레싱 (Nil-Coalescing) 연산자를 사용
 ? 한 번 더 사용 => ??
 */

var serverName: String? = "홍길동"
var userName = serverName ?? "미인증사용자"    // String타입

print(userName)

var hello = "인사하겠습니다. " + (str ?? "Say, Hi")
print(hello)



str = nil
print(str ?? "Say, Hi")
