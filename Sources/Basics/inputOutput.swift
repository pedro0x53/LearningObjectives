import Foundation


let pwd: String = "ahnes"
var tentativas = Array<String>()

var e = false

repeat  {
	print("Adivinhe a palava:", terminator: " ")
	var kbd = readLine() ?? "sair";

	guard kbd != "sair" else {
		print("Tchau!")
		break
	}

	if kbd == pwd {
		print("Acertou!\nSuas tentativas:")
		for tentativa in tentativas {
			print(tentativa)
		}
		e = true;
	} else {
		print("Palava errada! Tente novamente :) ou digite \"sair\" para finalizar.")
		tentativas.append(kbd)
		kbd = ""
	}

} while !e