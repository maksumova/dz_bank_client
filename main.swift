//
//  main.swift
//  2_Mes_DZ_1
//
//  Created by Nika Abdulakhatova on 12.01.2023.
//

import Foundation

print("Hello, World!")

//Создать класс Клиент с параметрами имя, фамилия, отчество, сумма кредита, срок кредита, сумма погашения, которая изначально равна 0.
//Создать класс Банк с параметрами клиенты. Создать внутри класса Банк функцию, рассчитывающая сумму кредита с процентами. Если клиент берет кредит на 1 год, то надбавка 30% (например: хочет взять 100000, то в итоге должен погасить 130000), на 2 - 15%, на 3 - 10%. Функция должна заполнять параметр сумма погашения для каждого клиента и распечататывать всю информацию клиента. Добавить вторую функцию, которая принимает одного клиента в аргументе, эта функция должна достать информацию по сумме погашения и распечатать график погашений по месяцам.


class Client{
    var name: String
    var surname: String
    var patronymic: String
    var amountОfСredit: Double
    var creditTerm: Int
    var repentanceAmount: Double = 0
    
    init(name: String, surname: String, patronymic: String, amountОfСredit: Double, creditTerm: Int, repentanceAmount: Double) {
        self.name = name
        self.surname = surname
        self.patronymic = patronymic
        self.amountОfСredit = amountОfСredit //сумма кредитования
        self.creditTerm = creditTerm //срок погашения
        self.repentanceAmount = repentanceAmount //процент погашения
    }
    
    
}

class Bank{
    var clients = [Client]()
    var percent: Double
    init(clients: [Client], percent: Double) {
        self.clients = clients
        self.percent = percent
    }
    
    
    func calculate(){
        //return Double(amountОfСredit) + (Double(amountОfСredit) * Double(year) * self.percent)
        for client in self.clients {
            client.repentanceAmount = Double(client.amountОfСredit) * Double(client.creditTerm) * self.percent
        }
    }
    
    func printClients(){
        for client in self.clients {
            print("Name: \(client.name), процент по кредиту: \(client.repentanceAmount)")
        }
    }
    
    func getClientById(clientId: Int){
        let client = self.clients[clientId]
        
        print(String(repeating: ">", count: 30))
        
        print("Name: \(client.name), процент по кредиту: \(client.repentanceAmount)")

        let months = client.creditTerm * 12
        let monthlyPayment = Double((client.amountОfСredit + client.repentanceAmount) / Double(months))
        for m in 1...months {
            print("Месяц \(m): сумма \(round(monthlyPayment)) сом")
        }
        
        print(String(repeating: "<", count: 30))
        
    }
    
    
    
}

var client1 = Client(name: "Андрей", surname: "Милохин", patronymic: "Исаакович", amountОfСredit: 10000, creditTerm: 2, repentanceAmount: 0)
var client2 = Client(name: "Дмитрий", surname: "Варонин", patronymic: "Олегович", amountОfСredit: 15000, creditTerm: 3, repentanceAmount: 0)

var kicb = Bank(clients: [client1, client2], percent: 0.3)


kicb.calculate()
kicb.printClients()
kicb.getClientById(clientId: 1)
