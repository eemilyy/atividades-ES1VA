 <h1>Rails | Quarta Atividade</h1>

 <p>Esta
atividade consiste em criar um projeto Rails para permitir que pessoas possam se cadastrar e
agendar sua vacinação de qualquer vacina disponível (tríplice viral, COVID, H1N1...). Essa ideia
é inspirada no site da <a href="http://vemvacinagaranhuns.site/solicitar">prefeitura de Garanhuns</a>. Utilize o seu ambiente já configurado para
criar um projeto com as especificações descritas abaixo.</p>
<p>Crie um repositório privado com nome “vem-vacina” no seu perfil do GitHub para trabalhar
na sua atividade. Seguem algumas especificações que o seu
projeto deve cumprir:</p>

<ul>
<li>Um usuário deve poder se cadastrar, editar cadastro e visualizar cadastro;</li>
<li>Cada usuário deve ter os campos nome completo, data de nascimento, CPF, senha,
nome completo da mãe, telefone, e-mail e endereço (CEP, cidade, bairro, logradouro
e complemento). O endereço deve ser uma classe de Model diferente de Usuário;</li>
<li>O usuário deve poder se <a href="https://www.devmedia.com.br/ruby-on-rails-implementando-autenticacao-de-usuario/32124">autenticar</a> no sistema. O seu CPF deve ser o login;</li>
<li>O usuário logado deve poder cadastrar, editar ou visualizar agendamento da
vacinação;</li>
<li>O evento da vacinação possui os campos de nome da vacina, descrição da localização,
data e horário;</li>
<li>É necessário implementar corretamente os <a href="https://guides.rubyonrails.org/active_record_validations.html"><i>validations</i></a> para todos os campos. Por
exemplo, não deve ser possível adicionar uma data de nascimento maior que a data
atual ou um CPF que contém letras e etc;</li>
<li>Também é necessário implementar corretamente os <a href="https://guides.rubyonrails.org/association_basics.html"><i>associations</i></a>:
<ul>
<li>Um usuário possui um endereço;</li>
<li>Um usuário pode possuir vários agendamentos</li>
</ul>
</ul>

<p>Todas as funcionalidades devem estar disponíveis adequadamente pelas views. Você pode
usar qualquer biblioteca de Ruby e Rails, inclusive o recurso de <a href="https://guides.rubyonrails.org/v3.2/getting_started.html#getting-up-and-running-quickly-with-scaffolding">Scaffold</a>. Mas perceba que
mesmo usando esse recurso, você precisa fazer alterações importantes nos controladores e
views para que tudo funcione corretamente. Apesar de bem vinda, não precisa deixar a
interface agradável com CSS ou outra tecnologia similar.</p>

<p>Os commits devem seguir os conceitos já vistos: mensagens que façam sentido, não deve
haver commit com trechos de código pela metade e etc. A identação correta do código incluído nas alterações de um commit também deve ser observada por você. Sempre use o
git status e git diff para verificar o que você está incluindo de alterações e quais arquivos estão
incluídos pros commits. Use o .gitignore pra evitar incluir arquivos desnecessários no commit.</p>