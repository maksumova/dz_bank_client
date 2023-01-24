//Создать класс Пенсионер с параметрами имя, фамилия, текущая сумма пенсии, кол-во лет на пенсии. Создать объекты в main и заполнить данными. Создать класс Соц.Фонд с приватным параметром массив пенсионеров, также публичная функция добавить пенсионера, приватная функция, которая увеличивает пенсию если кол-во лет на пенсии превышает 5 лет на 1000 сом. Эта приватная функция вызывается в другой доступной функции раздать пенсию. Функция раздачи пенсии отображает всех пенсионеров: фио и сумма пенсии.



class Pensioner {
    var firstName: String
    var lastName: String
    var pensionAmount: Double
    var yearsOnPension: Int

    init(firstName: String, lastName: String, pensionAmount: Double, yearsOnPension: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.pensionAmount = pensionAmount
        self.yearsOnPension = yearsOnPension
    }
}

class SocialFund {
    private var pensioners: [Pensioner]

    init() {
        self.pensioners = []
    }

    public func addPensioner(pensioner: Pensioner) {
        self.pensioners.append(pensioner)
    }

    private func increasePension(pensioner: Pensioner) {
        if pensioner.yearsOnPension > 5 {
            pensioner.pensionAmount += 1000
        }
    }

    public func distributePension() {
        for pensioner in pensioners {
            increasePension(pensioner: pensioner)
            print("\(pensioner.firstName) \(pensioner.lastName) Получает $\(pensioner.pensionAmount)")
        }
    }
}

let pensioner1 = Pensioner(firstName: "Саид", lastName: "Вахитов", pensionAmount: 2000, yearsOnPension: 10)
let pensioner2 = Pensioner(firstName: "Тимур", lastName: "Саидов", pensionAmount: 1500, yearsOnPension: 7)

let socialFund = SocialFund()
socialFund.addPensioner(pensioner: pensioner1)
socialFund.addPensioner(pensioner: pensioner2)

socialFund.distributePension()
