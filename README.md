# Informações para execução dos testes automatizados

Olá! Criei este breve passo-a-passo para configurar todo o ambiente de execução dos nossos testes automatizados com o Robot Framework.

### Instalar Python
A versão utilizada na data em que está sendo feito este tutorial é a 3.9.1. Caso encontre problemas na versão mais recente, procure por esta versão.

 [Link para download](https://www.python.org/downloads/)

 Ao instalar o Python, no primeiro passo deixe marcadas as opções "Install launcher for all users (Recommended)" e também "Add Python 3.9 to PATH".

 Em seguida, prossiga com a instalação recomendada em "Install Now".


 ### Instalar Robot Framework
 Se tudo estiver correto com a instalação do Python, basta ir até o terminal e digitar o seguinte comando:
 > pip install robotframework

 Obs: Foram utilizados aqui o Cmneder e o PowerShell com permissão de administrador.
 Em seguida, utilize o seguinte comando:
 > robot --version

 O comando deve retornar a versão do Robot e do Python instalado, caso a instalação do Robot Framework tenha sido bem sucedida.

 ### Visual Studio Code
 [Link para download](https://code.visualstudio.com/)

Seguir com a instalação padrão do Visual Studio Code, lembrando de manter marcado a opção "Adicione em PATH".
 
 É necessário baixar a extensão do Robot Framework. Basta acessar a parte Extensions (CTRL+Shift+X), depois procurar por ***Robot Framework Intellisense*** e instalar.

 ### Instalar o Node
 [Link para download](https://nodejs.org/en/download/)

 Instalar a versão LTS compatível com o seu sistema operacional. No nosso caso, foi utilizada a versão 14.15.5 do instalador .msi para Windows 64 bits.

 Prosseguir com a instalação padrão do Node, lembrando de deixar marcada a opção de adicionar ao PATH.
Ao finalizar a instalação do node, reinicie os terminais caso estejam abertos e digite o seguinte comando:
> node -v

Caso o comando retorne a versão do node, a instalação ocorreu com sucesso.

### Biblioteca Browser

Utilize o seguinte comando para instalar a biblioteca browser:
> pip install robotframework-browser

Utilize o comando a seguir para iniciar a biblioteca browser:
> rfbrowser init

Somente no caso de o rfbrowser não ser reconhecido, tentar:
> python -m Browser.entry init

Aguardar a biblioteca browser realizar download das dependências (Pode levar algum tempo...).

### Executar testes
Para executar os testes basta utilizar o comando:
> robot -v browser:chromium -v headless:false ARQUIVO.ROBOT

- Trocar o ARQUIVO.ROBOT pelo nome do arquivo com a extensão .robot.
- Para executar um único teste, é necessário estar dentro do diretório do arquivo ou acrescentar o caminho até ele.
    Ex:
    > robot -v browser:chromium -v headless:false minhapasta\ARQUIVO.ROBOT
- É possível executar vários testes em sequência somente trocando o nome do arquivo pelo nome da pasta em que os testes estão localizados.

# Fim :)
