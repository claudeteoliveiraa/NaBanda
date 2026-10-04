NaBanda
A tua localização, sempre por perto

IADE — Projeto de Desenvolvimento Móvel
Licenciatura em Engenharia e Informática 2026/2027
Proposta de Trabalho
Elementos do grupo
- Claudete Oliveira — 20250609
- Jose Luemba — 20251276
- Silva Nlenvo — 20251454
- Subhan Haji — 20240686
Lisboa — Outubro de 2026
Repositório GitHub: https://github.com/claudeteoliveiraa/NaBanda.git
Índice
1. Descrição
2. Objetivos e Motivação
3. Público-Alvo
4. Projetos Relacionados e Pesquisa Inicial
   - 4.1 what3words
   - 4.2 Google Maps
   - 4.3 Contexto e Pesquisa Inicial
5. Levantamento de Requisitos
   - 5.1 Requisitos Funcionais
   - 5.2 Requisitos Não Funcionais
   - 5.3 Requisitos Técnicos
6. Casos de Utilização
   - 6.1 Caso de Utilização Core — Criar e Partilhar uma Morada
   - 6.2 Caso de Utilização — Consultar uma Morada Recebida
   - 6.3 Caso de Utilização — Gerir Moradas
7. Guiões de Teste
   - 7.1 Guião de Teste 1 — Criar e Partilhar uma Morada
   - 7.2 Guião de Teste 2 — Consultar uma Morada Recebida
   - 7.3 Guião de Teste 3 — Gerir Moradas
8. Descrição da Solução
   - 8.1 Funcionamento da Aplicação
   - 8.2 Arquitetura do Sistema
   - 8.3 Tecnologias e Componentes
   - 8.4 Enquadramento nas Unidades Curriculares
   - 8.5 Modelo de Domínio Preliminar
9. Conceito Visual e Interfaces
   - 9.1 Fluxo Principal da Aplicação
   - 9.2 Funcionalidades Principais
10. Planeamento e Calendarização
    - 10.1 Gráfico de Gantt
11. Planos de Trabalho
    - 11.1 Project Charter
    - 11.2 WBS
12. Divisão de Tarefas
13. Conclusão
14. Declaração de Utilização de Inteligência Artificial
15. Bibliografia
1. Descrição
O NaBanda é uma aplicação móvel desenvolvida com o objetivo de criar uma forma simples, digital e reutilizável de identificar e partilhar uma localização. A ideia central é transformar uma posição física, obtida através do GPS do smartphone, numa “morada digital” que possa ser compreendida por outra pessoa sem que o utilizador tenha de explicar repetidamente como chegar ao local.
A aplicação foi pensada para contextos em que uma morada convencional pode ser insuficiente, pouco clara ou difícil de comunicar. Em vez de depender apenas de uma morada escrita, o NaBanda junta vários elementos: coordenadas GPS, visualização em mapa, nome da morada, referências locais, fotografias e um identificador único. Assim, a pessoa que recebe a morada consegue consultar a informação num único local e utilizar a navegação do dispositivo.
Como funciona o programa?
O funcionamento do NaBanda está organizado num fluxo simples. Primeiro, o utilizador cria uma conta ou inicia sessão. De seguida, seleciona a opção para criar uma nova morada. A aplicação solicita acesso à localização e obtém as coordenadas através do GPS. Antes de guardar, o utilizador pode confirmar a posição apresentada no mapa e acrescentar informação que ajude outra pessoa a reconhecer o local.
Depois de confirmar a localização, o utilizador pode atribuir um nome à morada, por exemplo “Minha Casa”, e adicionar referências como “depois da bomba de combustível”, “portão azul” ou “ao lado da escola”. Também pode adicionar fotografias do exterior ou de pontos de referência. Quando a morada é guardada, o sistema gera um código alfanumérico único e um QR Code, permitindo que a informação seja partilhada.
Quem recebe o código pode abrir a morada no NaBanda ou através da ligação partilhada. A aplicação apresenta o ponto no mapa, o nome, as referências e as fotografias disponíveis. A partir dessa página, o utilizador pode iniciar a navegação para o local. O proprietário da morada poderá posteriormente editar ou eliminar a informação.
Palavras-chave: morada digital; GPS; geolocalização; QR Code; mapas; Android Studio; Flutter; Dart; REST; Node.js; MySQL; Angola.
2. Objetivos e Motivação
O objetivo do projeto é desenvolver um protótipo funcional que demonstre o fluxo completo de criação e utilização de uma morada digital: criação da morada, armazenamento, geração do identificador, partilha, consulta e navegação.
O NaBanda pretende facilitar a comunicação de localizações quando uma morada convencional é insuficiente, pouco clara ou difícil de comunicar. A solução combina coordenadas GPS com informação contextual, como referências locais, fotografias e um nome personalizado.
A solução será desenvolvida com dados fictícios para testes e demonstração e não pretende substituir sistemas oficiais de endereçamento.
3. Público-Alvo
O público-alvo definido para o projeto inclui:
- Utilizadores de smartphones;
- Residentes;
- Visitantes;
- Serviços de entrega;
- Prestadores de serviços.
A aplicação foi pensada para situações em que seja necessário comunicar uma localização de forma simples e reutilizável.
4. Projetos Relacionados e Pesquisa Inicial
Para enquadrar a proposta foram consideradas soluções já utilizadas para localização, partilha de posições e representação digital de lugares. Estas soluções não são apresentadas como cópias do NaBanda, mas como referências que ajudam a identificar funcionalidades existentes e o espaço de diferenciação do projeto.
4.1 what3words
O what3words divide a superfície terrestre numa grelha de quadrados de 3 metros por 3 metros e associa a cada quadrado uma combinação única de três palavras. A principal ideia relevante para o NaBanda é a transformação de uma coordenada numa referência simples que pode ser comunicada verbalmente ou por mensagem.
No NaBanda, a identificação não depende apenas de três palavras. A morada digital é construída a partir da localização GPS e de informação contextual introduzida pelo utilizador. Esta informação pode incluir referências locais, fotografias e um nome personalizado, tornando a descrição mais próxima da forma como uma pessoa explica um local a outra.
4.2 Google Maps
O Google Maps constitui uma referência para a componente de mapas e navegação. Permite visualizar localizações, marcar pontos, pesquisar lugares, obter direções e partilhar posições. Estas funcionalidades são relevantes para o NaBanda porque uma morada digital deve permitir não só identificar um local, mas também ajudar o utilizador a chegar até ele.
A diferença conceptual é que o NaBanda coloca a criação e gestão de uma morada digital no centro da experiência. A aplicação pretende guardar uma combinação de localização e contexto que possa ser reutilizada em diferentes situações, em vez de apenas enviar uma localização pontual.
4.3 Contexto e Pesquisa Inicial
A pesquisa inicial aponta para a importância de soluções que facilitem a identificação de locais através de coordenadas e informação complementar. No contexto definido para o NaBanda, a existência de locais que podem ser comunicados através de referências informais reforça a utilidade de combinar GPS com elementos visuais e textuais.
Na análise de mercado serão ainda consideradas soluções de navegação, partilha de localização e ferramentas de endereçamento digital. O objetivo desta pesquisa é identificar funcionalidades já existentes, evitar duplicação desnecessária e definir claramente o que será implementado no protótipo académico.
5. Levantamento de Requisitos
Os requisitos seguintes traduzem o comportamento esperado da aplicação e servem como base para o desenvolvimento, os testes e a avaliação do protótipo.
5.1 Requisitos Funcionais
1. O sistema deve permitir criar uma conta de utilizador.
2. O sistema deve permitir iniciar e terminar sessão.
3. O utilizador deve poder criar uma nova morada digital.
4. O sistema deve obter a localização atual através do GPS do dispositivo.
5. O utilizador deve poder confirmar a localização no mapa antes de guardar.
6. O utilizador deve poder atribuir um nome à morada.
7. O utilizador deve poder introduzir uma ou mais referências textuais.
8. O utilizador deve poder adicionar fotografias de referência.
9. O sistema deve gerar um código alfanumérico único para cada morada.
10. O sistema deve gerar um QR Code associado à morada.
11. O utilizador deve poder partilhar o código ou uma ligação.
12. O utilizador recetor deve poder consultar a morada partilhada.
13. A consulta deve apresentar o mapa e a localização da morada.
14. A consulta deve apresentar as referências e fotografias existentes.
15. O utilizador deve poder iniciar navegação para a localização.
16. O proprietário deve poder consultar as moradas criadas.
17. O proprietário deve poder editar uma morada.
18. O proprietário deve poder eliminar uma morada.
19. O utilizador deve poder guardar moradas recebidas.
5.2 Requisitos Não Funcionais
1. A interface deve ser simples, clara e intuitiva.
2. As operações comuns devem apresentar resposta adequada sem bloqueios perceptíveis.
3. A aplicação deve funcionar em dispositivos móveis compatíveis.
4. A comunicação entre aplicação e servidor deve utilizar mecanismos adequados de segurança.
5. Os dados pessoais e de localização devem ser tratados segundo princípios de privacidade e RGPD.
6. Os dados utilizados em desenvolvimento e demonstração devem ser fictícios.
7. O sistema deve controlar o acesso a moradas que não sejam públicas.
8. A aplicação deve tratar indisponibilidade de GPS ou Internet de forma controlada.
9. O código deve ser modular, documentado e fácil de manter.
10. A interface deve adaptar-se a diferentes dimensões de ecrã.
11. A aplicação deve apresentar mensagens claras quando uma operação falhar.
12. O sistema deve permitir evolução futura sem alteração completa da arquitetura.
5.3 Requisitos Técnicos
- Flutter e Dart desenvolvidos em Android Studio / VS Code para a aplicação móvel.
- Node.js para o desenvolvimento do servidor.
- API REST para comunicação entre aplicação e backend.
- MySQL como base de dados relacional.
- GPS e serviços de mapas para localização e visualização.
- QR Code para partilha e acesso rápido.
- Câmara/galeria para fotografias de referência.
- Figma para prototipagem e desenho das interfaces.
- GitHub e GitHub Projects para versionamento e gestão do projeto.
- Arquitetura organizada segundo MVC e separação de responsabilidades.
6. Casos de Utilização
Os três casos de utilização seguintes correspondem aos três fluxos principais definidos para o protótipo: criação e partilha de uma morada, consulta de uma morada recebida e gestão das moradas existentes.
6.1 Caso de Utilização Core — Criar e Partilhar uma Morada
Objetivo: permitir ao utilizador criar uma morada digital e partilhá-la através de um identificador.
Pré-condição: o utilizador tem sessão iniciada e autorizou a utilização da localização.
Fluxo principal:
1. O utilizador acede à opção “Criar morada”.
2. A aplicação obtém a localização GPS.
3. O utilizador confirma o ponto apresentado no mapa.
4. O utilizador introduz o nome da morada.
5. O utilizador adiciona uma referência.
6. O utilizador adiciona uma fotografia.
7. O utilizador guarda a morada.
8. O sistema gera um código alfanumérico único.
9. O sistema gera um QR Code associado à morada.
10. O utilizador partilha o código ou a ligação com outra pessoa.
Resultado: a morada fica guardada e disponível através do identificador gerado.
6.2 Caso de Utilização — Consultar uma Morada Recebida
Objetivo: permitir ao utilizador consultar uma morada digital recebida e utilizar a localização para navegação.
Fluxo principal:
1. O utilizador abre o código ou ligação recebido.
2. A aplicação apresenta o ponto da morada no mapa.
3. O utilizador consulta o nome da morada.
4. O utilizador consulta as referências disponíveis.
5. O utilizador consulta as fotografias disponíveis.
6. O utilizador seleciona “Iniciar navegação”.
Resultado: a morada é apresentada corretamente e a localização pode ser utilizada para navegação.
6.3 Caso de Utilização — Gerir Moradas
Objetivo: permitir ao proprietário consultar, editar e eliminar uma morada existente.
Fluxo principal:
1. O utilizador abre “As minhas moradas”.
2. Seleciona uma morada existente.
3. Altera uma referência ou fotografia.
4. Guarda a alteração.
5. Quando necessário, seleciona uma morada de teste e elimina-a.
Resultado: as alterações são persistidas e a morada eliminada deixa de aparecer.
7. Guiões de Teste
7.1 Guião de Teste 1 — Criar e Partilhar uma Morada
Pré-condição: o utilizador tem sessão iniciada e autorizou a utilização da localização.
1. Aceder à opção “Criar morada”.
2. Obter a localização GPS e confirmar o ponto apresentado no mapa.
3. Introduzir nome, referência e fotografia.
4. Guardar a morada.
5. Confirmar a geração do código e QR Code.
6. Partilhar o código/ligação com outro utilizador.
Resultado esperado: a morada é guardada e fica disponível através do identificador gerado.
7.2 Guião de Teste 2 — Consultar uma Morada Recebida
1. Abrir o código ou ligação recebido.
2. Visualizar o ponto no mapa.
3. Consultar nome, referências e fotografias.
4. Selecionar “Iniciar navegação”.
Resultado esperado: a morada é apresentada corretamente e a localização pode ser utilizada para navegação.
7.3 Guião de Teste 3 — Gerir Moradas
1. Abrir “As minhas moradas”.
2. Selecionar uma morada existente.
3. Alterar uma referência ou fotografia.
4. Guardar a alteração.
5. Eliminar uma morada de teste.
Resultado esperado: as alterações são persistidas e a morada eliminada deixa de aparecer.
8. Descrição da Solução
8.1 Funcionamento da Aplicação
O funcionamento do NaBanda está organizado num fluxo simples. Primeiro, o utilizador cria uma conta ou inicia sessão. De seguida, seleciona a opção para criar uma nova morada. A aplicação solicita acesso à localização e obtém as coordenadas através do GPS.
Depois de confirmar a localização, o utilizador pode atribuir um nome à morada e adicionar referências e fotografias. Quando a morada é guardada, o sistema gera um código alfanumérico único e um QR Code.
Quando outra pessoa consulta esse identificador, a aplicação apresenta o ponto no mapa, o nome, as referências e as fotografias disponíveis. A partir dessa página, o utilizador pode iniciar a navegação para o local.
8.2 Arquitetura do Sistema
A aplicação será implementada segundo um modelo cliente-servidor.
O cliente é a aplicação móvel desenvolvida em Flutter/Dart. Este componente é responsável pela interface, navegação entre ecrãs, permissões do dispositivo, acesso ao GPS, utilização de mapas, QR Code e fotografias.
O backend será desenvolvido em Node.js e disponibilizará uma API REST. A API receberá os pedidos da aplicação, validará os dados, executará as regras de negócio e comunicará com a base de dados.
A informação persistente será armazenada num sistema MySQL.
Quando o utilizador cria uma morada, a aplicação obtém as coordenadas através do GPS. Depois de o utilizador confirmar o ponto, os restantes dados são enviados para a API. O backend valida a informação e cria o registo da morada na base de dados. O sistema gera um identificador único associado à morada.
Quando outra pessoa consulta esse identificador, a aplicação envia um pedido à API. O backend localiza a morada correspondente e devolve os dados necessários. A aplicação apresenta esses dados no ecrã e permite abrir a localização para navegação.
8.3 Tecnologias e Componentes
Componente	Tecnologia	Função
Aplicação móvel	Flutter / Dart (Android Studio)	Interface, GPS, mapa, QR Code, fotografias e navegação
Backend	Node.js / REST	API, autenticação e regras de negócio
Base de dados	MySQL	Utilizadores, moradas, referências, fotografias e partilhas
Prototipagem	Figma	Wireframes e interfaces
Versionamento	GitHub	Código, documentação e controlo de versões


8.4 Enquadramento nas Unidades Curriculares
Programação para Dispositivos Móveis:
Flutter/Dart, Node.js, REST, integração com base de dados, Git e documentação.
Redes e Comunicação de Dados:
Modelo cliente-servidor, HTTP/HTTPS e comunicação entre aplicação e API.
Bases de Dados:
Modelo relacional MySQL e persistência das entidades do sistema.
Interfaces e Usabilidade:
Personas, fluxos, Figma, prototipagem e testes de usabilidade.
Matemática Discreta:
Estatística e exploração de Monte Carlo para estudar a incerteza da localização GPS, mediante validação docente.
8.5 Modelo de Domínio Preliminar
As entidades principais previstas são Utilizador, MoradaDigital, Localizacao, Referencia, Fotografia e Partilha.
Um Utilizador pode possuir várias MoradasDigitais; cada MoradaDigital possui uma localização e pode ter várias referências e fotografias. Cada partilha utiliza um identificador associado à morada.
9. Conceito Visual e Interfaces
O protótipo de interface será desenvolvido em Figma. A identidade visual utiliza como referência o conceito fornecido para o NaBanda, com uma linguagem visual simples, cores associadas à marca e destaque para a localização e para a ação principal.
Figura 1 — Conceito visual e fluxo base do NaBanda
Os mockups e restantes elementos visuais da proposta devem ser associados ao conteúdo da pasta 02_Imagens do repositório.

9.1 Fluxo Principal da Aplicação
Registo/Login
      ↓
Página inicial
      ↓
Criar morada
      ↓
Obter GPS
      ↓
Confirmar no mapa
      ↓
Adicionar referências/fotografias
      ↓
Guardar
      ↓
Gerar código/QR
      ↓
Partilhar
      ↓
Consultar
      ↓
Navegar
9.2 Funcionalidades Principais
Os ecrãs previstos para o MVP são:
- Login/Registo
- Página Inicial
- Criar Morada
- Confirmação GPS
- Referências/Fotografias
- Morada Criada
- QR Code/Partilha
- Consulta de Morada
- As Minhas Moradas
- Editar Morada
10. Planeamento e Calendarização
10.1 Gráfico de Gantt
Tarefa / Atividade	Semanas	Responsável
Estudo do problema e pesquisa de mercado	S1–S3	Todos
Levantamento de requisitos e casos de uso	S1–S4	Todos
Desenho de mockups e fluxos no Figma	S2–S5	Jose Luemba
Project Charter, WBS e Proposta Inicial (M1)	S3–S4	Claudete Oliveira
Modelação do Modelo E-R e base de dados MySQL	S5–S7	Silva Nlenvo
Criação do servidor e API REST em Node.js	S5–S9	Silva Nlenvo
Estrutura base da app móvel em Flutter / Dart	S5–S8	Subhan Haji
Implementação de GPS e integração com mapas	S6–S9	Subhan Haji
Geração e leitura de QR Code	S7–S9	Subhan Haji
Integração Flutter ↔ Node.js REST API	S7–S9	Silva / Subhan
Relatório Intermédio e entrega Milestone 2	S8–S9	Claudete Oliveira
Cálculos estatísticos e precisão GPS (Mat. Discreta)	S9–S11	Todos
Testes funcionais, usabilidade e correções	S10–S13	Jose Luemba
Produção de vídeo promocional e poster	S11–S13	Claudete / Jose
Manual do utilizador e documentação REST final	S12–S14	Claudete Oliveira
Relatório Final (M3) e teste final no telemóvel	S13–S14	Todos


Fases do projeto:
- Semanas 1 a 4: Fase 1 — Milestone 1 (Proposta, Requisitos, WBS e Mockups)
- Semanas 5 a 9: Fase 2 — Milestone 2 (Protótipo Alfa, BD MySQL e Servidor REST)
- Semanas 10 a 14: Fase 3 — Milestone 3 (Versão Final, Vídeo, Poster e Apresentação)
11. Planos de Trabalho
11.1 Project Charter
Projeto: NaBanda
Problema: Dificuldade em comunicar determinadas localizações através de moradas convencionais.
Objetivo: Criar e partilhar moradas digitais através de GPS, referências, fotografias e identificador único.
Público-alvo: Utilizadores de smartphones, residentes, visitantes, entregas e prestadores de serviços.
Âmbito: Criação, consulta, edição, gestão e partilha de moradas.
Fora do âmbito: Substituição de sistemas oficiais de endereçamento e utilização de dados reais.
Riscos: Precisão do GPS, rede, permissões, privacidade e dependência de serviços externos.
11.2 WBS
1. Planeamento: Problema, pesquisa, requisitos e documentação inicial.
2. UX/UI: Personas, fluxos, Figma e testes de usabilidade.
3. Backend: MySQL, API REST, autenticação e regras de negócio.
4. Mobile: Flutter, GPS, mapas, QR Code e fotografias.
5. Testes: Testes funcionais, integração e usabilidade.
6. Entrega: Documentação, GitHub, demonstração e apresentação.
12. Divisão de Tarefas
A divisão identifica responsabilidades principais, mas todos os elementos participarão na integração, testes e documentação.
Elemento	Tarefas principais	Subtarefas
Claudete Oliveira	Gestão do projeto e documentação	Planeamento, GitHub, relatório e apresentação
Subhan Haji	Desenvolvimento da aplicação móvel	Flutter/Dart, interface, GPS, mapas e QR Code
Silva Nlenvo	Backend e dados	API REST, MySQL, autenticação e integração
Jose Luemba	UX/UI, testes e integração	Figma, usabilidade, testes funcionais e apoio na integração


13. Conclusão
O NaBanda apresenta uma proposta de aplicação móvel orientada para a criação e partilha de moradas digitais. O programa combina localização GPS com informação contextual, permitindo que o utilizador transforme uma posição física numa referência que pode ser reutilizada e partilhada.
O funcionamento previsto cobre todo o ciclo da morada: criação da conta, obtenção e confirmação da localização, introdução de referências e fotografias, geração de código e QR Code, partilha, consulta, gestão e navegação. A arquitetura proposta separa aplicação móvel, API REST e base de dados, permitindo que cada componente seja desenvolvido e testado de forma independente.
Para o Milestone 1, a proposta estabelece os requisitos, casos de teste, arquitetura, tecnologias, mockups e plano de trabalho necessários para avançar para a implementação. Nas fases seguintes serão refinados os modelos, protótipos e serviços, mantendo dados fictícios para desenvolvimento e demonstração.
14. Declaração de Utilização de Inteligência Artificial
No âmbito do desenvolvimento do projeto NaBanda para a unidade curricular de Projeto de Desenvolvimento Móvel, declara-se que foram utilizadas ferramentas de Inteligência Artificial Generativa (IA) com caráter estritamente auxiliar e de suporte ao trabalho da equipa.
A IA foi empregue como ferramenta de apoio nas seguintes tarefas:
- Estruturação e Revisão Documental: Apoio na organização de tópicos, revisão gramatical e formatação de tabelas, como o alinhamento visual do Gráfico de Gantt, em conformidade com as orientações do briefing.
- Brainstorming e Refinamento de Casos de Utilização: Auxílio na formulação textual detalhada dos fluxos de interação e casos de uso da aplicação.
- Preparação da Comunicação do Projeto: Apoio na síntese de conteúdos e na organização dos tópicos para o pitch de apresentação e estruturação dos slides.
A conceção da ideia original, a definição da arquitetura técnica (Flutter, Node.js, REST e MySQL), a prototipagem das interfaces no Figma, o desenvolvimento do código-fonte e todas as tomadas de decisão foram realizadas e validadas integralmente pelos membros do grupo de trabalho.
15. Bibliografia
- what3words — documentação oficial
- Google Maps — documentação oficial
- Android Developers — Kotlin e Jetpack Compose
- Node.js — documentação oficial
- MySQL — documentação oficial
