class Mae {

	private var attr1: String
	private var attr2: Int

	init() {
		self.attr1 = "Default"
		self.attr2 = 42
		print("Construtor Mae...")
	}

	init(attr1: String, attr2: Int) {
		self.attr1 = attr1
		self.attr2 = attr2
		print("Construtor Mae...")
	}

	deinit {
		print("Destroying instace of \"Mãe\"")
	}

	public func mthd1() {
		print("Função Mãe")
	}

	public func getAttr1() -> String{
		return self.attr1
	}

	public func setAttr1(_ value: String) {
		self.attr1 = value
	}

	public func getAttr2() -> Int{
		return self.attr2
	}

	public func setAttr2(_ value: Int) {
		self.attr2 = value
	}

}

final class Filha: Mae {

	private var attr3: String
	private var attr4: Bool

	override init() {
		self.attr3 = "Anything"
		self.attr4 = true
		super.init()
		print("Construtor Filha...")
	}

	init(attr3: String, attr4: Bool) {
		self.attr3 = attr3
		self.attr4 = attr4
		super.init()
		print("Construtor Filha...")
	}

	deinit {
		print("Destroying instace of \"Filha\"")
	}

	override func mthd1() {
		print("Função Mãe sobreescrita.")
	}

	public func getAttr3() -> String{
		return self.attr3
	}

	public func setAttr3(_ value: String) {
		self.attr3 = value
	}

	public func getAttr4() -> Bool{
		return self.attr4
	}

	public func setAttr4(_ value: Bool) {
		self.attr4 = value
	}
}

public func main() {
	let mae = Mae()
	print(mae.getAttr1(), mae.getAttr2(), separator: " ")

	let filha = Filha()
	print(filha.getAttr1(), filha.getAttr2(), filha.getAttr3(), filha.getAttr4(), separator: " ")
}

main()