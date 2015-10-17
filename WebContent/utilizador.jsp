<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<div align="center">
		<form method="post" action="ServletUtilizador?acao=Incluir">
			<fieldset>
				<legend>Cadastro de Utilizador</legend>
		
		
		
				<label>Name:</label><input
					name="nome" autofocus="autofocus" placeholder="Nome"  value="${utilizador.nome}"/><br />
					<label>Sobrenome:</label><input
					name="sobrenome" autofocus="autofocus" placeholder="Sobrenomeome"  value="${utilizador.sobrenome}"/><br />
				 <label>Data Nascimento:</label><input type="date" name="dataNascimento" value="${utilizador.dataNascimento}"/><br /> 
				 <label>Email:</label><input
					type="email" name="email" placeholder="contribute@email.com.br"  value="${utilizador.email}"/><br />
					<label>Genero:</label><input
					 name="genero" placeholder="genero"  value="${utilizador.genero}"/><br />
					<label>Senha:</label><input
					type="password" name="senha" placeholder=""  value="${utilizador.senha}"/><br />
					<label>Apelido:</label><input
					 name="apelido" placeholder="apelido"  value="${utilizador.apelido}"/><br /><br />
				<label>Termos de uso:</label><textarea rows="4" cols="50">
1. Do cadastro do usuário
1.1 A partir do preenchimento de seu cadastro, o Contribute Blog concederá ao Utilizador um “login e senha” pessoal e intransferível que corresponderá à sua identificação.
1.2 O Utilizador é responsável pela proteção da confidencialidade de sua senha pessoal.
1.3 Não serão aceitos e poderão ser cancelados, a qualquer tempo, endereços de correio eletrônico (e-mail) ou logins que contenham expressões ou conjuntos gráfico-denominativos que já tenham sido escolhidos anteriormente por outro Utilizador ou, de outra forma, que sejam injuriosos, coincidentes com marcas, nomes comerciais, rótulos de estabelecimentos, razões sociais de empresas, expressões publicitárias, nomes e pseudônimos de pessoas de relevância pública, famosos ou registrados por terceiros, cujo uso não esteja autorizado ou, ainda, contrários à lei ou às exigências da moral e bons costumes geralmente aceitos, bem como expressões que possam induzir outras pessoas a erro, sendo certo que o Utilizador responderá pelo uso indevido, tanto no âmbito civil quanto criminal, se aplicável.
1.4 O Utilizador declara e reconhece que as informações sobre si fornecidas são verdadeiras, corretas, atuais e completas, responsabilizando-se por essas informações. 
1.5 Caso os dados informados no momento do cadastramento estejam errados ou incompletos, impossibilitando a comprovação e identificação do Utilizador, o Contribute Blog terá o direito de suspender imediatamente a prestação de serviços, sem necessidade de prévio aviso e sem prejuízo de eventuais providências judiciais cabíveis.

2. Privacidade:
2.1 Como usamos as informações que coletamos:
2.1.1 Podemos usar o nome que o usuário fornece em seu Perfil do Contribute Blog em todos os serviços que oferecemos. 
2.1.2 Quando o usuário entra em contato com a Contribute Blog, mantemos um registro da comunicação para ajudar a resolver qualquer problema que ele possa estar enfrentando. Podemos usar o endereço de e-mail do usuário para informar a ele sobre nossos serviços, por exemplo, as próximas mudanças ou melhorias.

2.2 Acesso e atualização de suas informações pessoais
2.2.1 Sempre que o usuário usa nossos serviços, nosso objetivo é oferecer-lhe acesso a suas informações pessoais. Se essas informações estiverem erradas, nos empenhamos em prover maneiras rápidas de atualizá-las ou excluí-las – exceto quando temos de mantê-las para fins comerciais legítimos ou jurídicos. Ao atualizar suas informações pessoais, podemos solicitar o usuário que confirme sua identidade antes de atendermos a solicitação.

2.3 Informações que compartilhamos
Não compartilhamos informações pessoais com empresas, organizações e indivíduos externos à Contribute Blog, salvo em uma das seguintes circunstâncias:
	Com sua autorização;
	Para processamento externo;
	Por motivos legais;
	Compartilharemos informações pessoais com empresas, organizações ou indivíduos externos à Contribute Blog se acreditarmos, de boa-fé, que o acesso, uso, conservação ou divulgação das informações seja razoavelmente necessário para:
		cumprir qualquer legislação, regulamentação, processo legal ou solicitação governamental aplicável.
		cumprir Termos de Serviço aplicáveis, inclusive investigação de possíveis violações.
		detectar, impedir ou abordar de alguma outra forma fraude, questões técnicas ou de segurança.
		proteger contra dano aos direitos, a propriedade ou a segurança da Contribute, nossos usuários ou o público, conforme solicitado ou permitido por lei.

3. Segurança das informações
3.1 Trabalhamos com afinco para proteger a Contribute Blog e nossos usuários de acesso não autorizado ou alteração, divulgação ou destruição não autorizada das informações que detemos. Especificamente:
	Criptografamos muitos de nossos serviços usando SSL.
	Restringimos o acesso a informações pessoais por parte de empregados, contratados e representantes da Contribute que necessitam saber essas informações para processá-las para nós, e que estão sujeitos a rigorosas obrigações contratuais de confidencialidade, podendo ser processados ou dispensados se deixarem de cumprir tais obrigações.

4. Compartilhando suas informações e conteúdos
4.1 Você é proprietário de todas as informações e conteúdos que publica no Contribute Blog. Além disso:
4.1.1 Para conteúdos protegidos por leis de direitos de propriedade intelectual, como fotos e vídeos, você nos concede uma licença global não exclusiva, transferível, sublicenciável, livre de royalties para usar qualquer conteúdo IP publicado por você ou associado ao Contribute Blog. 
4.1.2 Quando você exclui um conteúdo, ele é removido de maneira similar ao esvaziamento da lixeira do computador. No entanto, entenda que o conteúdo removido pode permanecer em cópias de backup por um período razoável (mas não estará disponível para outros).

4.2 Quando você publica conteúdos ou informações usando a opção Público, você está permitindo que todos, incluindo pessoas fora do Contribute Blog, acessem e usem essas informações e as associem a você. 

5. Proteção dos direitos de outras pessoas
5.1 Nós respeitamos os direitos de terceiros, e esperamos que você faça o mesmo.
5.2 Você não publicará conteúdo ou praticará qualquer ato no Contribute Blog que infrinja ou viole os direitos de terceiros ou a lei.
5.3 Nós podemos remover qualquer conteúdo ou informação publicada por você no Contribute Blog se julgarmos que isso viola esta declaração ou nossas políticas.
5.4 Se você violar repetidamente os direitos de propriedade intelectual de terceiros, nós desativaremos sua conta quando apropriado.
5.5 Você não usará nossos direitos autorais, marcas comerciais ou quaisquer marcas semelhantes que possam causar confusão, exceto conforme expressamente autorizado pelas nossas Diretrizes de uso de marcas ou com nossa permissão prévia por escrito.

6. Alterações
Nossa Política de Privacidade e Termos de Uso pode ser alterada de tempos em tempos. Publicaremos quaisquer alterações da política de privacidade nesta página e, se as alterações forem significativas.
				
				</textarea><br />
				<input type="checkbox" required name="termos" value="Concordo"> Eu concordo com os termos de uso<br />
				
				
				<input type="submit" value="Enviar"> <input
					type="reset" value="Limpar"> <br />
			</fieldset>
		</form>
		<a href="index.jsp">Voltar</a>
		
		</div>
</body>
</html>