<?php
	include_once('conexao.php');
if(!empty($_FILES['arquivo']['tmp_name'])){
		$arquivo = new DomDocument();
		$arquivo->load($_FILES['arquivo']['tmp_name']);
		
		$linhas = $arquivo->getElementsByTagName('Row');

		$primeira_linha = true;

		foreach ($linhas as $linha) {
			if($primeira_linha == false){
				$nome = $linha->getElementsByTagName('Data')->item(0)->nodeValue;
				echo "<strong>Nome:</strong> $nome <br>";

				$email = $linha->getElementsByTagName('Data')->item(1)->nodeValue;
				echo "<strong>E-mail:</strong> $email <br>";

				$data_nasc = $linha->getElementsByTagName('Data')->item(2)->nodeValue;
				echo "<strong>Data de Nascimento:</strong> ".date('d-m-Y', strtotime($data_nasc))."<br>";

				$telefone = $linha->getElementsByTagName('Data')->item(3)->nodeValue;
				echo "<strong>Telefone:</strong> $telefone <br>";

				$idade = $linha->getElementsByTagName('Data')->item(4)->nodeValue;
				echo "<strong>Idade:</strong> $idade anos<br>";

				$cpf = $linha->getElementsByTagName('Data')->item(5)->nodeValue;
				echo "<strong>CPF:</strong> $cpf<br>";

				$niveis_acesso_id = $linha->getElementsByTagName('Data')->item(6)->nodeValue;
				echo "<strong>Nível de Acesso:</strong> $niveis_acesso_id <br>";

				echo "<hr>";

				//Inserir os dados no banco
				$dados_tabela = "INSERT INTO usuarios (nome, email, data_nascimento, telefone, idade, cpf, niveis_acesso_id) VALUES ('$nome', '$email', '$data_nasc', '$telefone', '$idade', '$cpf', '$niveis_acesso_id')";
				$resultado = mysqli_query($conn, $dados_tabela);
			}
			$primeira_linha = false;
		}
	}
?>
<a href="index.php"><button>Voltar</button><a/>