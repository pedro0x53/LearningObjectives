//Arrays
print("Arrays\n\n")
var arr = Array(repeating: 0, count: 5)
arr.append(7)
arr[4] = 8
print(arr)

print(arr[1].hashValue)

for (index, val) in arr.enumerated() {
	print("\(index + 1): \(val) - \(val.hashValue)")
}

//Sets
print("\n\nSets\n\n")
var frutas = Set(["maçã", "banana", "limão", "laranja", "maçã"])
print(frutas)

frutas.insert("tomate")

for fruta in frutas.sorted() {
	print(fruta)
}

frutas.remove("maçã")
print("Frutas 1: \(frutas)")

var frutas2 = Set(["limão", "goiaba", "morango", "manga", "abacaxi", "banana"])
print("Frutas 2: \(frutas2)")

print("Interseção:", frutas.intersection(frutas2), separator: " ")
print("Diferença:", frutas.symmetricDifference(frutas2), separator: " ")
print("União:", frutas.union(frutas2), separator: " ")
print("Subtração:", frutas.subtracting(frutas2), separator: " ")


//Tuples
print("\n\nTuples\n\n")

var nomes = (primeiro: "João", segundo: "Pedro", terceiro: "André", quarto: "Marco")

if nomes.0 == nomes.primeiro {
	print("Acessando por nomes ou numeros o mesmo valor")
	print("\(nomes.0) (nomes.0) é igual a \(nomes.primeiro) (nomes.primeiro)")
}

print(nomes)

nomes.0 = "Carlos"
print(nomes)



// Dicts
print("\n\nDictionaries\n\n")

var dict = [String: String]()

dict["Nome"] = "Pedro"
dict["Idade"] = "19"
dict["Cor favorita"] = "Vermelho"

for (key, val) in dict {
	print(key, val, separator: ": ")
}

if let oldName = dict.updateValue("João", forKey: "Nome") {
	print("Valo antigo do Nome: \(oldName)")
}

if let cor = dict.removeValue(forKey: "Cor favorita") {
	print("Cor fav. del.: \(cor)")
}

print(dict)

let keys = dict.keys
let vals = dict.values

print("Keys: \(keys)", "Values: \(vals)", separator: "\n")
