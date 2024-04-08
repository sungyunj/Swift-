//   -  반복문을 사용해서, 1부터 10까지 값을 더한 결과값을 출력하는 코드를 작성.
//     (힌트: 변수를 하나 만들고, 해당 변수를 이용 어떤 반복문을 어떻게 사용할지 고민해 보기.)

var sum = 0

for i in 1...10 {
    sum += i
}

print(sum)

//   -  튜플이 뭔가요? 간단한 개념을 1-2줄로 서술 하고, 간단한 코드 예시.

// "연관된 데이터"를 하나로 묶어서 간단하게 사용하는 타입
// (여러개의 데이터를 가볍게 묶어서, 데이터로 활용가능)

var tuple = ("홍길동", 20, "서울")

var coordinate = (5, 10)

//   -  구구단을 2단부터, 9단까지 출력하는 코드를 반복문을 사용해서 만들어 보세요.
//     (힌트: 어떤게 반복이 되어야 할까요? 구구단에서 반복이 되는 부분이 어디죠?)


for i in 2...9 {
    for j in 1...9 {
        print("\(i) X \(j) = \(i * j)")
    }
}

//   - 함수 만들어 보기: 여러개의 정해지지 않은 갯수의 정수를 받아서, 평균을 구하는 함수를 작성해 보세요.
//     (힌트: 함수의 이름은 누구봐도 알아볼 수 있게, 평균..이란 말이 들어가면 좋겠네요!)


func makeAverage(nums: Int...) -> Double {
    var sum = 0
    
    for i in nums {
        sum += i
    }
    
    return Double(sum) / Double(nums.count)
}

makeAverage(nums: 4, 2, 7)

//  - 함수만들어 보기: 2개의 정수를 입력 받아, 그 숫자들을 더한 결과값을 문자열로 반환하는 함수를 작성
//    (힌트: 문자열로 반환하려면, 함수 안에서 변환의 과정이 한번 필요하겠네요.)


func add(a: Int, b: Int) -> String {
    return String(a + b)
}

print(add(a: 3, b: 4))


//  구글(google), 페이스북(facebook), 네이버(naver) 로그인을 위해 SiteLogin라는 이름을 가진
//  아래의 Enum 타입을 완성해 보세요.
//  각 case는 사용자의 아이디(String)와 비밀번호(String)를 위한 연관 값(associated value)을  가집니다.
 
//  (만들고자 하는 타입 예시)
//  enum SiteLogin { }
 
//  (변수에 담았을때의 모습)
//  var login1 = SiteLogin.google("google@gmail.com", "0000")
 
//   (힌트: 연관값이라는 개념을 어떻게 사용해야 하죠?)


enum SiteLogin {
    case google(String, String)
    case facebook(String, String)
    case naver(String, String)
}


var login1 = SiteLogin.google("google@gmail.com", "0000")



// 또는 아래의 형태의 구현도 좋음

enum SiteLogin2 {
    case google(id: String, password: String)
    case facebook(id: String, password: String)
    case naver(id: String, password: String)
}

// 앨런Swift 문법 마스터 스쿨 참조