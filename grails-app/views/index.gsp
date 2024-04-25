<!DOCTYPE html>
 
<html lang="pt-br">
<head>
    <title>Formulário de cadastro de clientes</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  

    <asset:stylesheet src="style.css"/>
    <asset:javascript src="script.js"/>
</head>

<body>
    <header>
        <asset:image src="logo.svg" alt="Logo Asaas"/>
    </header>

    <main>
        <h1>Faça já seu cadastro no Asaas</h1>

        <g:form controller="form" action="enviarForm" id="formulario">
            <h3>Dados Pessoais</h3>
                <table cellspacing="10">
                    <tr>
                        <td class="label"><label>Nome: </label></td>
                        <td><g:textField name="nome" value="${params.nome}" /></td>
                    </tr>
                    <tr>
                        <td class="label"><label>Email: </label></td>
                        <td><g:textField name="email" value="${params.email}" /></td>
                    </tr>
                    <tr>
                        <td class="label"><label>CPF:</label></td>
                        <td><g:textField name="cpf" value="${params.cpf}" maxlength="11" /></td>
                    </tr>
                    <tr>
                        <td class="label"><label>Telefone: </label></td>
                        <td><g:textField name="telefone" value="${params.telefone}" maxlength="11"/></td>
                    </tr>
                </table>

            <h3>Dados de Endereço</h3>
                <table cellspacing="10">
                    <tr>
                        <td class="label"><label>CEP:</label></td>
                        <td><g:textField name="cep" value="${params.cep}" 
                        maxlength="8" onblur="pesquisacep(this.value);"/></td>
                    </tr>
                    <tr>
                        <td class="label"><label>Rua:</label></td>
                        <td><g:textField name="rua" value="${params.rua}" /></td>
                    </tr>
                    <tr>
                        <td class="label"><label>Número:</label></td>
                        <td><g:textField name="numero" value="${params.numero}" /></td>
                    </tr>
                    <tr>
                        <td class="label"><label>Bairro:</label></td>
                        <td><g:textField name="bairro" value="${params.bairro}" /></td>
                    </tr>
                    <tr>
                        <td class="label"><label>Cidade:</label></td>
                        <td><g:textField name="cidade" value="${params.cidade}" /></td>
                    </tr>
                    <tr>
                        <td class="label"><label>Estado:</label></td>
                        <td><g:textField name="estado" value="${params.estado}" /></td>
                    </tr>
                </table><br/>

            <div class="div-button">
                <g:submitButton class="button" name="submit" value="Enviar formulário"/>
                <input class="button" type="reset" value="Limpar">
            </div>
        </g:form>
    </main>

    <footer></footer>
</body>
</html>
