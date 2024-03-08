import Cocoa


var number: Int? = 7
var hello: String? = "안녕하세요"
var name: String? = "홍길동"
var newNum: Double? = 5.5


print(number)
print(hello)
print(name)
print(newNum)


// if let 변환 연습

if let num = number {
    print(num)
}

if let hi = hello {
    print(hi)
}

if let n = name {
    print(n)
}

if let nN = newNum {
    print(nN)
}

// guard let 연습

func aa(nn: Int?) {
    guard let N = nn else { return }
    print(N)
}

aa(nn: number)


func hprint(h: String?) {
    guard let hhi = h else { return }
    print(hhi)
}

hprint(h: hello)
