# IADE — Projeto de Desenvolvimento Móvel

## Proposta de Trabalho: NaBanda

**A tua localização, sempre por perto**

**Licenciatura em Engenharia Informática — 2026/2027**

**Elementos do grupo:**
- Claudete Oliveira — 20250609
- Jose Luemba — 20251276
- Silva Nlenvo — 20251454
- Subhan Haji — 20240686

---

## Índice

- 1.0 Descrição
- 2.0 Projetos Relacionados
  - 2.1 What3words
  - 2.2 Google Maps
  - 2.3 Contexto e Pesquisa Inicial
- 3.0 Levantamento de Requisitos
  - 3.1 Requisitos Funcionais
  - 3.2 Requisitos Não Funcionais
  - 3.3 Requisitos Técnicos
  - 3.4 Guião de Teste 1 — Criar e partilhar uma morada (CORE)
  - 3.5 Guião de Teste 2 — Consultar uma morada recebida
  - 3.6 Guião de Teste 3 — Gerir moradas
- 4.0 Arquitetura do Sistema
  - 4.1 Funcionamento da Aplicação
  - 4.2 Tecnologias e componentes
  - 4.3 Enquadramento nas Unidades Curriculares
  - 4.4 Modelo de Domínio Preliminar
- 5.0 Conceito Visual e Interfaces
  - 5.1 Fluxo Principal da Aplicação
  - 5.2 Funcionalidades principais
  - 5.3 Tabela de Gantt
- 6.0 Planos de Trabalho
  - 6.1 Etapa 1 — Idealização e Recolha de Requisitos
  - 6.2 Etapa 2 — Prototipagem e Desenvolvimento
  - 6.3 Etapa 3 — Integração, Testes e Demonstração
- 7.0 Divisão de Tarefas
- 8.0 Conclusão
- 9.0 Bibliografia
- 10.0 Declaração de Utilização de Inteligência Artificial

---

# 1.0 Descrição

O NaBanda é uma aplicação móvel desenvolvida com o objetivo de criar uma forma simples, digital e reutilizável de identificar e partilhar uma localização. A ideia central é transformar uma posição física, obtida através do GPS do smartphone, numa “morada digital” que possa ser compreendida por outra pessoa sem que o utilizador tenha de explicar repetidamente como chegar ao local.

A aplicação foi pensada para contextos em que uma morada convencional pode ser insuficiente, pouco clara ou difícil de comunicar. Em vez de depender apenas de uma morada escrita, o NaBanda junta vários elementos: coordenadas GPS, visualização em mapa, nome da morada, referências locais, fotografias e um identificador único. Assim, a pessoa que recebe a morada consegue consultar a informação num único local e utilizar a navegação do dispositivo.

Como funciona o programa?

O funcionamento do NaBanda está organizado num fluxo simples. Primeiro, o utilizador cria uma conta ou inicia sessão. De seguida, seleciona a opção para criar uma nova morada. A aplicação solicita acesso à localização e obtém as coordenadas através do GPS. Antes de guardar, o utilizador pode confirmar a posição apresentada no mapa e acrescentar informação que ajude outra pessoa a reconhecer o local.

Depois de confirmar a localização, o utilizador pode atribuir um nome à morada, por exemplo “Minha Casa”, e adicionar referências como “depois da bomba de combustível”, “portão azul” ou “ao lado da escola”. Também pode adicionar fotografias do exterior ou de pontos de referência. Quando a morada é guardada, o sistema gera um código alfanumérico único e um QR Code, permitindo que a informação seja partilhada.

Quem recebe o código pode abrir a morada no NaBanda ou através da ligação partilhada. A aplicação apresenta o ponto no mapa, o nome, as referências e as fotografias disponíveis. A partir dessa página, o utilizador pode iniciar a navegação para o local. O proprietário da morada poderá posteriormente editar ou eliminar a informação.

## Objetivo do projeto e motivação

O objetivo é desenvolver um protótipo funcional que demonstre este fluxo de ponta a ponta: criação da morada, armazenamento, geração do identificador, partilha, consulta e navegação. A solução será desenvolvida com dados fictícios para testes e demonstração, não pretendendo substituir sistemas oficiais de endereçamento.

A motivação para o desenvolvimento do NaBanda surge da necessidade de tornar mais simples a comunicação de localizações que não são facilmente identificadas através de uma morada convencional.

Palavras-chave: morada digital; GPS; geolocalização; QR Code; mapas; endereçamento digital; Kotlin; Jetpack Compose; REST; Node.js; MySQL; Angola.

# 2.0 Projetos Relacionados

Para enquadrar a proposta foram consideradas soluções já utilizadas para localização, partilha de posições e representação digital de lugares. Estas soluções não são apresentadas como cópias do NaBanda, mas como referências que ajudam a identificar funcionalidades existentes e o espaço de diferenciação do projeto.

# 2.1 What3words

O what3words divide a superfície terrestre numa grelha de quadrados de 3 metros por 3 metros e associa a cada quadrado uma combinação única de três palavras. A principal ideia relevante para o NaBanda é a transformação de uma coordenada numa referência simples que pode ser comunicada verbalmente ou por mensagem.

No NaBanda, a identificação não depende apenas de três palavras. A morada digital é construída a partir da localização GPS e de informação contextual introduzida pelo utilizador. Esta informação pode incluir referências locais, fotografias e um nome personalizado, tornando a descrição mais próxima da forma como uma pessoa explica um local a outra.

# 2.2 Google Maps

O Google Maps constitui uma referência para a componente de mapas e navegação. Permite visualizar localizações, marcar pontos, pesquisar lugares, obter direções e partilhar posições. Estas funcionalidades são relevantes para o NaBanda porque uma morada digital deve permitir não só identificar um local, mas também ajudar o utilizador a chegar até ele.

A diferença conceptual é que o NaBanda coloca a criação e gestão de uma morada digital no centro da experiência. A aplicação pretende guardar uma combinação de localização e contexto que possa ser reutilizada em diferentes situações, em vez de apenas enviar uma localização pontual.

# 2.3 Contexto e Pesquisa Inicial

A pesquisa inicial aponta para a importância de soluções que facilitem a identificação de locais através de coordenadas e informação complementar. No contexto definido para o NaBanda, a existência de locais que podem ser comunicados através de referências informais reforça a utilidade de combinar GPS com elementos visuais e textuais.

Na análise de mercado serão ainda consideradas soluções de navegação, partilha de localização e ferramentas de endereçamento digital. O objetivo desta pesquisa é identificar funcionalidades já existentes, evitar duplicação desnecessária e definir claramente o que será implementado no protótipo académico.

# 3.0 Levantamento de Requisitos

Os requisitos seguintes traduzem o comportamento esperado da aplicação e servem como base para o desenvolvimento, os testes e a avaliação do protótipo.

# 3.1 Requisitos Funcionais

- O sistema deve permitir criar uma conta de utilizador.

- O sistema deve permitir iniciar e terminar sessão.

- O utilizador deve poder criar uma nova morada digital.

- O sistema deve obter a localização atual através do GPS do dispositivo.

- O utilizador deve poder confirmar a localização no mapa antes de guardar.

- O utilizador deve poder atribuir um nome à morada.

- O utilizador deve poder introduzir uma ou mais referências textuais.

- O utilizador deve poder adicionar fotografias de referência.

- O sistema deve gerar um código alfanumérico único para cada morada.

- O sistema deve gerar um QR Code associado à morada.

- O utilizador deve poder partilhar o código ou uma ligação.

- O utilizador recetor deve poder consultar a morada partilhada.

- A consulta deve apresentar o mapa e a localização da morada.

- A consulta deve apresentar as referências e fotografias existentes.

- O utilizador deve poder iniciar navegação para a localização.

- O proprietário deve poder consultar as moradas criadas.

- O proprietário deve poder editar uma morada.

- O proprietário deve poder eliminar uma morada.

- O utilizador deve poder guardar moradas recebidas.

- 3.2 Requisitos Não Funcionais

- A interface deve ser simples, clara e intuitiva.

- As operações comuns devem apresentar resposta adequada sem bloqueios perceptíveis.

- A aplicação deve funcionar em dispositivos móveis compatíveis.

- A comunicação entre aplicação e servidor deve utilizar mecanismos adequados de segurança.

- Os dados pessoais e de localização devem ser tratados segundo princípios de privacidade e RGPD.

- Os dados utilizados em desenvolvimento e demonstração devem ser fictícios.

- O sistema deve controlar o acesso a moradas que não sejam públicas.

- A aplicação deve tratar indisponibilidade de GPS ou Internet de forma controlada.

- O código deve ser modular, documentado e fácil de manter.

- A interface deve adaptar-se a diferentes dimensões de ecrã.

- A aplicação deve apresentar mensagens claras quando uma operação falhar.

- O sistema deve permitir evolução futura sem alteração completa da arquitetura.

# 3.3 Requisitos Técnicos

- Android Studio 2026.1, Kotlin e Jetpack Compose para o desenvolvimento da aplicação móvel.

- Node.js para o desenvolvimento do servidor.

- API REST para comunicação entre aplicação e backend.

- MySQL como base de dados relacional.

- GPS e serviços de mapas para localização e visualização.

- QR Code para partilha e acesso rápido.

- Câmara/galeria para fotografias de referência.

- Figma para prototipagem e desenho das interfaces.

- GitHub e GitHub Projects para versionamento e gestão do projeto.

- Arquitetura organizada segundo MVC e separação de responsabilidades.

# 3.4 Guião de Teste 1 — Criar e partilhar uma morada (CORE)

**Pré-condição:** o utilizador tem sessão iniciada e autorizou a utilização da localização.

- Aceder à opção “Criar morada”.

- Obter a localização GPS e confirmar o ponto apresentado no mapa.

- Introduzir nome, referência e fotografia.

- Guardar a morada.

- Confirmar a geração do código e QR Code.

- Partilhar o código/ligação com outro utilizador.

**Resultado esperado:** a morada é guardada e fica disponível através do identificador gerado.

# 3.5 Guião de Teste 2 — Consultar uma morada recebida

- Abrir o código ou ligação recebido.

- Visualizar o ponto no mapa.

- Consultar nome, referências e fotografias.

- Selecionar “Iniciar navegação”.

**Resultado esperado:** a morada é apresentada corretamente e a localização pode ser utilizada para navegação.

# 3.6 Guião de Teste 3 — Gerir moradas

- Abrir “As minhas moradas”.

- Selecionar uma morada existente.

- Alterar uma referência ou fotografia.

- Guardar a alteração.

- Eliminar uma morada de teste.

**Resultado esperado:** as alterações são persistidas e a morada eliminada deixa de aparecer.

# 4.0 Arquitetura do Sistema

A aplicação será implementada segundo um modelo cliente-servidor, utilizando MVC e comunicação através de uma API REST. O cliente é a aplicação móvel desenvolvida em Android Studio 2026.1, utilizando Kotlin e Jetpack Compose. A aplicação seguirá o padrão MVC, permitindo separar os diferentes componentes do sistema. O Model será responsável pelos dados, o View pela apresentação da interface e o Controller pela gestão da interação lógica da aplicação. O backend será desenvolvido em Node.js e disponibilizará uma API REST, responsável pela validação dos dados, regras de negócio e comunicação com a base de dados MySQL.

# 4.1 Funcionamento da Aplicação

Quando o utilizador cria uma morada, a aplicação obtém as coordenadas através do GPS. Depois de o utilizador confirmar o ponto, os restantes dados são enviados para a API. O backend valida a informação e cria o registo da morada na base de dados. O sistema gera um identificador único que fica associado à morada.

Quando outra pessoa consulta esse identificador, a aplicação envia um pedido à API. O backend localiza a morada correspondente e devolve os dados necessários. A aplicação apresenta esses dados no ecrã e permite abrir a localização para navegação.

# 4.2 Tecnologias e componentes

| Componente | Tecnologia | Função |
| --- | --- | --- |
| Aplicação móvel | Kotlin / Jetpack Compose | Interface, GPS, mapa, QR Code, fotografias e navegação |
| Backend | Node.js / REST | API, autenticação e regras de negócio |
| Base de dados | MySQL | Utilizadores, moradas, referências, fotografias e partilhas |
| Prototipagem | Figma | Wireframes e interfaces |
| Versionamento | GitHub | Código, documentação e controlo de versões |

# 4.3 Enquadramento nas Unidades Curriculares

**Programação para Dispositivos Móveis:**

Android Studio 2026.1, Kotlin, Jetpack Compose, REST, integração com base de dados, Git e documentação.

**Redes e Comunicação de Dados:**

Modelo cliente-servidor, HTTP/HTTPS e comunicação entre aplicação e API.

**Bases de Dados:**

Modelo relacional MySQL e persistência das entidades do sistema.

**Interfaces e Usabilidade:**

Personas, fluxos, Figma, prototipagem e testes de usabilidade.

**Matemática Discreta:**

Estatística e exploração de Monte Carlo para estudar a incerteza da localização GPS, mediante validação docente.

# 4.4 Modelo de Domínio Preliminar

As entidades principais previstas são Utilizador, MoradaDigital, Localizacao, Referencia, Fotografia e Partilha. Um Utilizador pode possuir várias MoradasDigitais; cada MoradaDigital possui uma localização e pode ter várias referências e fotografias. Cada partilha utiliza um identificador associado à morada.

# 5.0 Conceito Visual e Interfaces

*Figura 1 — Conceito visual e fluxo base do NaBanda*

O protótipo de interface será desenvolvido em Figma. A identidade visual utiliza como referência o conceito fornecido para o NaBanda, com uma linguagem visual simples, cores associadas à marca e destaque para a localização e para a ação principal.

5.1 Fluxo Principal da Aplicação

1. Registo/Login → 2. Página inicial → 3. Criar morada → 4. Obter GPS → 5. Confirmar no mapa → 6. Adicionar referências/fotografias → 7. Guardar → 8. Gerar código/QR → 9. Partilhar → 10. Consultar → 11. Navegar.

# 5.2 Funcionalidades principais

### Conta de utilizador

Permite criar uma conta e gerir as moradas associadas ao utilizador.

### Criação de morada

Capta a localização GPS e permite acrescentar nome, referências e fotografias.

### Código e QR Code

Transforma a morada numa referência fácil de partilhar.

### Consulta

Apresenta num único ecrã o mapa, localização, referências e fotografias.

### Navegação

Permite encaminhar o utilizador para uma aplicação de mapas/navegação.

### Gestão

Permite consultar, editar e eliminar moradas criadas.

### Privacidade

Permite definir o tratamento e acesso às moradas de acordo com as regras do sistema.

Os ecrãs previstos para o MVP são: Login/Registo, Página Inicial, Criar Morada, Confirmação GPS, Referências/Fotografias, Morada Criada, QR Code/Partilha, Consulta de Morada, As Minhas Moradas e Editar Morada.

5.3 Tabela de Gantt

| Tarefa / Atividade | S1 | S2 | S3 | S4 | S5 | S6 | S7 | S8 | S9 | S10 | S11 | S12 | S13 | S14 | Responsável |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Estudo do problema e pesquisa de mercado | ■ | ■ | ■ |  |  |  |  |  |  |  |  |  |  |  | Todos |
| Levantamento de requisitos e casos de uso | ■ | ■ | ■ | ■ |  |  |  |  |  |  |  |  |  |  | Todos |
| Desenho de mockups e fluxos no Figma |  | ■ | ■ | ■ | ■ |  |  |  |  |  |  |  |  |  | Jose Luemba |
| Project Charter, WBS e Proposta Inicial (M1) |  |  | ■ | ■ |  |  |  |  |  |  |  |  |  |  | Claudete Oliveira |
| Modelação do Modelo E-R e base de dados MySQL |  |  |  |  | ■ | ■ | ■ |  |  |  |  |  |  |  | Silva Nlenvo |
| Criação do servidor e API REST em Node.js |  |  |  |  | ■ | ■ | ■ | ■ | ■ |  |  |  |  |  | Silva Nlenvo |
| Estrutura base da app móvel em  / Kotlin / Jetpack Compose |  |  |  |  | ■ | ■ | ■ | ■ |  |  |  |  |  |  | Subhan Haji |
| Implementação de GPS e integração com mapas |  |  |  |  |  | ■ | ■ | ■ | ■ |  |  |  |  |  | Subhan Haji |
| Geração e leitura de QR Code |  |  |  |  |  |  | ■ | ■ | ■ |  |  |  |  |  | Subhan Haji |
| Integração Kotlin / Jetpack Compose <-> Node.js REST API |  |  |  |  |  |  | ■ | ■ | ■ |  |  |  |  |  | Silva / Subhan |
| Relatório Intermédio e entrega Milestone 2 |  |  |  |  |  |  |  | ■ | ■ |  |  |  |  |  | Claudete Oliveira |
| Cálculos estatísticos e precisão GPS (Mat. Discreta) |  |  |  |  |  |  |  |  | ■ | ■ | ■ |  |  |  | Todos |
| Testes funcionais, usabilidade e correções |  |  |  |  |  |  |  |  |  | ■ | ■ | ■ | ■ |  | Jose Luemba |
| Produção de vídeo promocional e poster |  |  |  |  |  |  |  |  |  |  | ■ | ■ | ■ |  | Claudete / Jose |
| Manual do utilizador e documentação REST final |  |  |  |  |  |  |  |  |  |  |  | ■ | ■ | ■ | Claudete Oliveira |
| Relatório Final (M3) e teste final no telemóvel |  |  |  |  |  |  |  |  |  |  |  |  | ■ | ■ | Todos |

Semanas 1 a 4: Fase 1 — Milestone 1 (Proposta, Requisitos, WBS e Mockups)

Semanas 5 a 9: Fase 2 — Milestone 2 (Protótipo Alfa, BD MySQL e Servidor REST)

Semanas 10 a 14: Fase 3 — Milestone 3 (Versão Final, Vídeo, Poster e Apresentação)

# 6.0 Planos de Trabalho

# 6.1 Etapa 1 — Idealização e Recolha de Requisitos

Nesta fase será consolidado o problema, definido o público-alvo e analisadas soluções relacionadas. Serão preparados requisitos funcionais e não funcionais, casos de utilização, personas, fluxos de utilização, Project Charter, WBS e primeira versão dos mockups.

# 6.2 Etapa 2 — Prototipagem e Desenvolvimento

Nesta fase serão desenvolvidos os protótipos em Figma e implementados o modelo relacional MySQL, a API REST em Node.js e a aplicação em Kotlin e Jetpack Compose. Será feita a integração progressiva das funcionalidades de GPS, mapas, fotografias e QR Code.

# 6.3 Etapa 3 — Integração, Testes e Demonstração

Nesta fase serão integrados frontend, backend e base de dados. Serão executados os guiões de teste, testes de integração e avaliações de usabilidade. Os problemas encontrados serão corrigidos antes da preparação da documentação e apresentação.

Project Charter

Projeto: NaBanda

Problema: Dificuldade em comunicar determinadas localizações através de moradas convencionais.

Objetivo: Criar e partilhar moradas digitais através de GPS, referências, fotografias e identificador único.

Público-alvo: Utilizadores de smartphones, residentes, visitantes, entregas e prestadores de serviços.

Âmbito: Criação, consulta, edição, gestão e partilha de moradas.

Fora do âmbito: Substituição de sistemas oficiais de endereçamento e utilização de dados reais.

Riscos: Precisão do GPS, rede, permissões, privacidade e dependência de serviços externos.

WBS

Planeamento: Problema, pesquisa, requisitos e documentação inicial.

UX/UI: Personas, fluxos, Figma e testes de usabilidade.

Backend: MySQL, API REST, autenticação e regras de negócio.

Mobile: Kotlin, Jetpack Compose, GPS, mapas, QR Code e fotografias.

Testes: Testes funcionais, integração e usabilidade.

Entrega: Documentação, GitHub, demonstração e apresentação.

7.0 Divisão de Tarefas

A divisão identifica responsabilidades principais, mas todos os elementos participarão na integração, testes e documentação.

| Elemento | Tarefas principais | Subtarefas |
| --- | --- | --- |
| Claudete Oliveira | Gestão do projeto e documentação | Planeamento, GitHub, relatório e apresentação |
| Subhan Haji | Desenvolvimento da aplicação móvel | Kotlin / Jetpack Compose, interface, GPS, mapas e QR Code |
| Silva Nlenvo | Backend e dados | API REST, MySQL, autenticação e integração |
| Jose Luemba | UX/UI, testes e integração | Figma, usabilidade, testes funcionais e apoio na integração |

8.0 Conclusão

O NaBanda apresenta uma proposta de aplicação móvel orientada para a criação e partilha de moradas digitais. O programa combina localização GPS com informação contextual, permitindo que o utilizador transforme uma posição física numa referência que pode ser reutilizada e partilhada.

O funcionamento previsto cobre todo o ciclo da morada: criação da conta, obtenção e confirmação da localização, introdução de referências e fotografias, geração de código e QR Code, partilha, consulta, gestão e navegação. A arquitetura proposta separa aplicação móvel, API REST e base de dados, permitindo que cada componente seja desenvolvido e testado de forma independente.

Para o Milestone 1, a proposta estabelece os requisitos, casos de teste, arquitetura, tecnologias, mockups e plano de trabalho necessários para avançar para a implementação. Nas fases seguintes serão refinados os modelos, protótipos e serviços, mantendo dados fictícios para desenvolvimento e demonstração.

Repositório GitHub: https://github.com/claudeteoliveiraa/NaBanda.git

## 10.0 Declaração de Utilização de Inteligência Artificial

No âmbito do desenvolvimento do projeto NaBanda para a unidade curricular de Projeto de Desenvolvimento Móvel, declara-se que foram utilizadas ferramentas de Inteligência Artificial Generativa (IA) com caráter estritamente auxiliar e de suporte ao trabalho da equipa.

A IA foi empregue como ferramenta de apoio nas seguintes tarefas:

Estruturação e Revisão Documental: Apoio na organização de tópicos, revisão gramatical e formatação de tabelas (como o alinhamento visual do Gráfico de Gantt) em conformidade com as orientações do briefing.

Brainstorming e Refinamento de Casos de Utilização: Auxílio na formulação textual detalhada dos fluxos de interação e casos de uso da aplicação.

Preparação da Comunicação do Projeto: Apoio na síntese de conteúdos e na organização dos tópicos para o pitch de apresentação e estruturação dos slides.

A conceção da ideia original, a definição da arquitetura técnica (Android Studio 2026.1, Kotlin, Jetpack Compose, MVC, Node.js, REST e MySQL), a prototipagem das interfaces no Figma, o desenvolvimento do código-fonte e todas as tomadas de decisão foram realizadas e validadas integralmente pelos membros do grupo de trabalho.

## 9.0 Bibliografia

what3words — documentação oficial

Google Maps — documentação oficial

Android Developers — Kotlin e Jetpack Compose

Node.js — documentação oficial

MySQL — documentação oficial
