import Foundation


func greetings(_ name: String) {
	print("Welcome \(name)")
}

greetings("Pedro")



func sum(_ n1: Int = 0, _ n2: Int = 0) -> Int {
	return n1 + n2
}
print(sum(16 + 34))



func newArr(values: String...) -> Array<String> {
	var arr = Array<String>()
	for value in values {
		arr.append(value)
	}

	return arr
}



let res = newArr(values: "J", "o", "ã", "o")
print(res.joined())



var pontosDeVida = 2000
print("Pontos de Vida: \(pontosDeVida)")
func damageDetected(_ damage: inout Int) {
	print("Ataque inimigo...")
	damage -= 100
}

damageDetected(&pontosDeVida)
print("Pontos de Vida: \(pontosDeVida)")