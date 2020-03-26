import Foundation

struct User {
	private var name: String
	private var username: String
	private var password: String {
		didSet {
			if password.count > 8 {
				print("Senha Forte")
			} else {
				print("Senha Fraca")
			}
		}
	}

	init(name: String, username: String, password: String, admin: Bool = false) {
		self.name = name
		self.username = username
		self.password = password
		self.admin = admin
	}

	var admin: Bool = false
	var isAdmin: String {
		if admin {
			return "\(name) é um administrador."
		} else {
			return "\(name) não é um administrador."
		}
	}

	func greetings() {
		print("Bem vindo \(username) ", terminator: "| ")
		if admin {
			print("Admin")
		} else {
			print("Tipo 1")
		}
	}

	mutating func setName(_ name: String) {
		self.name = name
	}

	mutating func setUsername(_ username: String) {
		self.username = username
	}

	mutating func setPassword(_ password: String) {
		self.password = password
	}
}

var p = User(name: "Pedro", username: "sousa27", password: "admin", admin: true)
print(p)

p.setPassword("shamballa")
print(p)

var p2 = User(name: "Marco", username: "marco42", password: "1234")
print(p2)

p2.setPassword("anhes")
print(p2)


p.greetings()
p2.greetings()
