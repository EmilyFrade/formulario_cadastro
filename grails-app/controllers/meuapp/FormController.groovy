package meuapp

class FormController {
    def enviarForm() {
        def nome = params.nome
        def email = params.email
        def cpf = params.cpf
        def telefone = params.telefone
        def cep = params.cep
        def rua = params.rua
        def numero = params.numero
        def bairro = params.bairro
        def cidade = params.cidade
        def estado = params.estado

        println("Nome: $nome")
        println("Email: $email")
        println("CPF: $cpf")
        println("Telefone: $telefone")
        println("CEP: $cep")
        println("Rua: $rua")
        println("Número: $numero")
        println("Bairro: $bairro")
        println("Cidade: $cidade")
        println("Estado: $estado")
        println("Formulário enviado com sucesso!")

        flash.message = "Formulário enviado com sucesso!"

        def alertScript = "<script>alert('${flash.message}'); window.location.href='/';</script>"

        render(text: alertScript, contentType: 'text/html')
    }
}