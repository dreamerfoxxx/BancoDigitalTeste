# BancoDigitalTeste
...
O primeiro passo para rodar a aplica��o locamente vai ser executar o script de Criacao (est� no reposit�rio em .txt e .sql ) no banco de dados local para cria��o das tabelas.
Ap�s, vai ser necess�rio rodar a solu��o (Server/ServerSide.sln) no IIS Local para deixar as requisi��es dispon�veis para consulta.
Ap�s isso poder�s abrir a p�gina Home no navegador (Client/home.html), l� ser� exigido um login, o usu�rio padr�o �:
login:teste senha:12345678.

O gerador de relat�rio de empr�stimos � um console app que est� em Server/GeradorRelatorios , ele � quem poderia ser usado no agendador de tarefas ou similiar para o processamento peri�dico ou �nico.
Estou jogando o arquivo na pasta C:\Temp.
Creio que ser� preciso trocar as portas nas requisi��es que atualmente eram as minhas locais = "44390"" para as que ser�o usadas no novo ambiente. (Checar qual porta vai ser startada)

Nota importante : Existe um conflito entre portas , derivado de um comportamento do navegador , que exigiu que eu baixasse esta extens�o do chromee para testar corretamente (Creio que ser� necess�ria ativa-la para testar) :
https://chrome.google.com/webstore/detail/allow-control-allow-origi/nlfbmbojpeacfghkpbjhddihlkkiljbi/related?hl=en-US
O conflito s� existe no navegador, ent�o se for feito testes com postman ou parecidos n�o precisaria da extens�o.

Qualquer d�vida : daniel.giese.rodrigues@gmail.com
