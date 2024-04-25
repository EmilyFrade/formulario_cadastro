function limpa_formulário_cep() {
    document.getElementsByName('rua')[0].value=("");
    document.getElementsByName('bairro')[0].value=("");
    document.getElementsByName('cidade')[0].value=("");
    document.getElementsByName('estado')[0].value=("");
}

function callback(conteudo) {
    if (!("erro" in conteudo)) {
        document.getElementsByName('rua')[0].value=(conteudo.logradouro);
        document.getElementsByName('bairro')[0].value=(conteudo.bairro);
        document.getElementsByName('cidade')[0].value=(conteudo.localidade);
        document.getElementsByName('estado')[0].value=(conteudo.uf);
    } 
    else {
        limpa_formulário_cep();
        alert("CEP não encontrado.");
    }
}
    
function pesquisacep(valor) {
    let cep = valor.replace(/\D/g, '');

    if (cep != "") {
        let validacep = /^[0-9]{8}$/;
        if(validacep.test(cep)) {
            document.getElementsByName('rua')[0].value="...";
            document.getElementsByName('bairro')[0].value="...";
            document.getElementsByName('cidade')[0].value="...";
            document.getElementsByName('estado')[0].value="...";

            let script = document.createElement('script');

            script.src = 'https://viacep.com.br/ws/'+ cep + '/json/?callback=callback';

            document.body.appendChild(script);
        } 
        else {
            limpa_formulário_cep();
            alert("Formato de CEP inválido.");
        }
    }
    else {
        limpa_formulário_cep();
    }
};