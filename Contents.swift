import Foundation

//Lesson1
//AgeTypeというenumをつくってください。大人（高校生以上）、小人（4歳～中学生）、シニア（65歳以上）、3歳以下
enum AgeType: String {
    case adult = "大人（高校生以上)"
    case children = "小人（4歳～中学生)"
    case senior = "シニア（65歳以上)3歳以下"
    case baby = "3歳以下"
    
    //金額を定義
    var price: Int {
        switch self {
        case .adult:
            return 2700
        case .children:
            return 1500
        case .senior:
            return 2000
        case .baby:
            return 0
        }
    }
}

//Lesson2
//Customerというクラスを作成してくだい。id, 氏名、性別、AgeTypeの情報をCustomerにもたせてください。
class Customer {
    let id: Int
    let name: String
    let sex: String
    let ageType: AgeType
    //イニシャライザ
    init(id: Int, name: String, sex: String, ageType: AgeType) {
        self.id = id
        self.name = name
        self.sex = sex
        self.ageType = ageType
    }
}

//Lesson3
//以下の10人分のCustomerインスタンスを生成して配列に入れてください。
//1    曽根節男　男    　大人（高校生以上）
//2    大下陽華　女    　大人（高校生以上）
//3    岩間俊子　女    　大人（高校生以上）
//4    金森正美　女    　小人（4歳～中学生）
//5    上原義勝　男    　小人（4歳～中学生）
//6    川辺寧々　女　小人（4歳～中学生）
//7    坂口駿太朗    男　小人（4歳～中学生）
//8    柴田宏    男    シニア（65歳以上）
//9    住田春花　女    　3歳以下
//10    小室心結　女    　3歳以下
let man = "男"
let woman = "女"
//配列を生成する
var pearsons = [Customer]()

pearsons.append(Customer(id: 1, name: "曽根節男", sex: man, ageType: .adult))
pearsons.append(Customer(id: 2, name: "大下陽華", sex: woman, ageType: .adult))
pearsons.append(Customer(id: 3, name: "岩間俊子", sex: woman, ageType: .adult))
pearsons.append(Customer(id: 4, name: "金森正美", sex: woman, ageType: .children))
pearsons.append(Customer(id: 5, name: "上原義勝", sex: man, ageType: .children))
pearsons.append(Customer(id: 6, name: "川辺寧々", sex: woman, ageType: .children))
pearsons.append(Customer(id: 7, name: "坂口駿太朗", sex: man, ageType: .children))
pearsons.append(Customer(id: 8, name: "柴田宏", sex: man, ageType: .senior))
pearsons.append(Customer(id: 9, name: "住田春花", sex: woman, ageType: .baby))
pearsons.append(Customer(id: 10, name: "小室心結", sex: woman, ageType: .baby))

//Lesson4
//以下の料金表をもとに、③で生成した顧客の合計の料金をprintしてください。10,000円のように３桁ごとにカンマ区切りでprintするように。
//大人（高校生以上）    2,700円
//小人（4歳～中学生）    1,500円
//シニア（65歳以上）    2,000円
//3歳以下    無料

var totalPrice = 0
for user in pearsons {
    totalPrice += user.ageType.price
}
print(String.localizedStringWithFormat("%d円", totalPrice))

//Lesson5
//男性の合計料金はいくらでしょう？
var manTotalPrice = 0
for user in pearsons {
    if user.sex == man {
        manTotalPrice += user.ageType.price
    }
}
print(String.localizedStringWithFormat("%d円", manTotalPrice))

//Lesson6
//女性の合計金額
var womanTotalPrice = 0
for user in pearsons {
    if user.sex == woman {
        womanTotalPrice += user.ageType.price
    }
}
print(String.localizedStringWithFormat("%d円", womanTotalPrice))












