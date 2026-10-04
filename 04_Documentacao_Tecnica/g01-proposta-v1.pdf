# NaBanda

> **A tua localização, sempre por perto**

**IADE — Projeto de Desenvolvimento Móvel**  
**Licenciatura em Engenharia e Informática 2026/2027**  
**Proposta de Trabalho**

**Elementos do grupo**
- Claudete Oliveira — 20250609
- Jose Luemba — 20251276
- Silva Nlenvo — 20251454
- Subhan Haji — 20240686

**Lisboa / Outubro / 2026**

---

## Índice

1. [Descrição](#10-descrição)
2. [Projetos Relacionados](#20-projetos-relacionados)
   - [2.1 What3words](#21-what3words)
   - [2.2 Google Maps](#22-google-maps)
   - [2.3 Contexto e Pesquisa Inicial](#23-contexto-e-pesquisa-inicial)
3. [Levantamento de Requisitos](#30-levantamento-de-requisitos)
   - [3.1 Requisitos Funcionais](#31-requisitos-funcionais)
   - [3.2 Requisitos Não Funcionais](#32-requisitos-não-funcionais)
   - [3.3 Requisitos Técnicos](#33-requisitos-técnicos)
   - [3.4 Guião de Teste 1](#34-guião-de-teste-1--criar-e-partilhar-uma-morada)
   - [3.5 Guião de Teste 2](#35-guião-de-teste-2--consultar-uma-morada-recebida)
   - [3.6 Guião de Teste 3](#36-guião-de-teste-3--gerir-moradas)
4. [Arquitetura do Sistema](#40-arquitetura-do-sistema)
   - [4.1 Funcionamento da Aplicação](#41-funcionamento-da-aplicação)
   - [4.2 Tecnologias e Componentes](#42-tecnologias-e-componentes)
   - [4.3 Enquadramento nas Unidades Curriculares](#43-enquadramento-nas-unidades-curriculares)
   - [4.4 Modelo de Domínio Preliminar](#44-modelo-de-domínio-preliminar)
5. [Conceito Visual e Interfaces](#50-conceito-visual-e-interfaces)
   - [5.1 Fluxo Principal da Aplicação](#51-fluxo-principal-da-aplicação)
   - [5.2 Funcionalidades Principais](#52-funcionalidades-principais)
   - [5.3 Tabela de Gantt](#53-tabela-de-gantt)
6. [Planos de Trabalho](#60-planos-de-trabalho)
7. [Divisão de Tarefas](#70-divisão-de-tarefas)
8. [Conclusão](#80-conclusão)
9. [Declaração de Utilização de Inteligência Artificial](#90-declaração-de-utilização-de-inteligência-artificial)
10. [Bibliografia](#100-bibliografia)

---

## 1.0 Descrição

O NaBanda é uma aplicação móvel desenvolvida com o objetivo de criar uma forma simples, digital e reutilizável de identificar e partilhar uma localização. A ideia central é transformar uma posição física, obtida através do GPS do smartphone, numa “morada digital” que possa ser compreendida por outra pessoa sem que o utilizador tenha de explicar repetidamente como chegar ao local.

A aplicação foi pensada para contextos em que uma morada convencional pode ser insuficiente, pouco clara ou difícil de comunicar. Em vez de depender apenas de uma morada escrita, o NaBanda junta vários elementos: coordenadas GPS, visualização em mapa, nome da morada, referências locais, fotografias e um identificador único. Assim, a pessoa que recebe a morada consegue consultar a informação num único local e utilizar a navegação do dispositivo.

### Como funciona o programa?

O funcionamento do NaBanda está organizado num fluxo simples. Primeiro, o utilizador cria uma conta ou inicia sessão. De seguida, seleciona a opção para criar uma nova morada. A aplicação solicita acesso à localização e obtém as coordenadas através do GPS. Antes de guardar, o utilizador pode confirmar a posição apresentada no mapa e acrescentar informação que ajude outra pessoa a reconhecer o local.

Depois de confirmar a localização, o utilizador pode atribuir um nome à morada, por exemplo “Minha Casa”, e adicionar referências como “depois da bomba de combustível”, “portão azul” ou “ao lado da escola”. Também pode adicionar fotografias do exterior ou de pontos de referência. Quando a morada é guardada, o sistema gera um código alfanumérico único e um QR Code, permitindo que a informação seja partilhada.

Quem recebe o código pode abrir a morada no NaBanda ou através da ligação partilhada. A aplicação apresenta o ponto no mapa, o nome, as referências e as fotografias disponíveis. A partir dessa página, o utilizador pode iniciar a navegação para o local. O proprietário da morada poderá posteriormente editar ou eliminar a informação.

### Objetivo do projeto

O objetivo é desenvolver um protótipo funcional que demonstre este fluxo de ponta a ponta: criação da morada, armazenamento, geração do identificador, partilha, consulta e navegação. A solução será desenvolvida com dados fictícios para testes e demonstração, não pretendendo substituir sistemas oficiais de endereçamento.

**Palavras-chave:** morada digital; GPS; geolocalização; QR Code; mapas; Android Studio; Flutter; Dart; REST; Node.js; MySQL; Angola.

---

## 2.0 Projetos Relacionados

Para enquadrar a proposta foram consideradas soluções já utilizadas para localização, partilha de posições e representação digital de lugares. Estas soluções não são apresentadas como cópias do NaBanda, mas como referências que ajudam a identificar funcionalidades existentes e o espaço de diferenciação do projeto.

### 2.1 What3words

O what3words divide a superfície terrestre numa grelha de quadrados de 3 metros por 3 metros e associa a cada quadrado uma combinação única de três palavras. A principal ideia relevante para o NaBanda é a transformação de uma coordenada numa referência simples que pode ser comunicada verbalmente ou por mensagem.

No NaBanda, a identificação não depende apenas de três palavras. A morada digital é construída a partir da localização GPS e de informação contextual introduzida pelo utilizador. Esta informação pode incluir referências locais, fotografias e um nome personalizado, tornando a descrição mais próxima da forma como uma pessoa explica um local a outra.

### 2.2 Google Maps

O Google Maps constitui uma referência para a componente de mapas e navegação. Permite visualizar localizações, marcar pontos, pesquisar lugares, obter direções e partilhar posições. Estas funcionalidades são relevantes para o NaBanda porque uma morada digital deve permitir não só identificar um local, mas também ajudar o utilizador a chegar até ele.

A diferença conceptual é que o NaBanda coloca a criação e gestão de uma morada digital no centro da experiência. A aplicação pretende guardar uma combinação de localização e contexto que possa ser reutilizada em diferentes situações, em vez de apenas enviar uma localização pontual.

### 2.3 Contexto e Pesquisa Inicial

A pesquisa inicial aponta para a importância de soluções que facilitem a identificação de locais através de coordenadas e informação complementar. No contexto definido para o NaBanda, a existência de locais que podem ser comunicados através de referências informais reforça a utilidade de combinar GPS com elementos visuais e textuais.

Na análise de mercado serão ainda consideradas soluções de navegação, partilha de localização e ferramentas de endereçamento digital. O objetivo desta pesquisa é identificar funcionalidades já existentes, evitar duplicação desnecessária e definir claramente o que será implementado no protótipo académico.

---

## 3.0 Levantamento de Requisitos

Os requisitos seguintes traduzem o comportamento esperado da aplicação e servem como base para o desenvolvimento, os testes e a avaliação do protótipo.

### 3.1 Requisitos Funcionais

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

### 3.2 Requisitos Não Funcionais

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

### 3.3 Requisitos Técnicos

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

### 3.4 Guião de Teste 1 — Criar e partilhar uma morada

**Pré-condição:** o utilizador tem sessão iniciada e autorizou a utilização da localização.

1. Aceder à opção “Criar morada”.
2. Obter a localização GPS e confirmar o ponto apresentado no mapa.
3. Introduzir nome, referência e fotografia.
4. Guardar a morada.
5. Confirmar a geração do código e QR Code.
6. Partilhar o código/ligação com outro utilizador.

**Resultado esperado:** a morada é guardada e fica disponível através do identificador gerado.

### 3.5 Guião de Teste 2 — Consultar uma morada recebida

1. Abrir o código ou ligação recebido.
2. Visualizar o ponto no mapa.
3. Consultar nome, referências e fotografias.
4. Selecionar “Iniciar navegação”.

**Resultado esperado:** a morada é apresentada corretamente e a localização pode ser utilizada para navegação.

### 3.6 Guião de Teste 3 — Gerir moradas

1. Abrir “As minhas moradas”.
2. Selecionar uma morada existente.
3. Alterar uma referência ou fotografia.
4. Guardar a alteração.
5. Eliminar uma morada de teste.

**Resultado esperado:** as alterações são persistidas e a morada eliminada deixa de aparecer.

---

## 4.0 Arquitetura do Sistema

A aplicação será implementada segundo um modelo cliente-servidor. O cliente é a aplicação móvel desenvolvida em Flutter/Dart. Este componente é responsável pela interface, navegação entre ecrãs, permissões do dispositivo, acesso ao GPS, utilização de mapas, QR Code e fotografias.

O backend será desenvolvido em Node.js e disponibilizará uma API REST. A API receberá os pedidos da aplicação, validará os dados, executará as regras de negócio e comunicará com a base de dados. A informação persistente será armazenada num sistema MySQL.

### 4.1 Funcionamento da Aplicação

Quando o utilizador cria uma morada, a aplicação obtém as coordenadas através do GPS. Depois de o utilizador confirmar o ponto, os restantes dados são enviados para a API. O backend valida a informação e cria o registo da morada na base de dados. O sistema gera um identificador único que fica associado à morada.

Quando outra pessoa consulta esse identificador, a aplicação envia um pedido à API. O backend localiza a morada correspondente e devolve os dados necessários. A aplicação apresenta esses dados no ecrã e permite abrir a localização para navegação.

### 4.2 Tecnologias e Componentes

| Componente | Tecnologia | Função |
|---|---|---|
| Aplicação móvel | Flutter / Dart (Android Studio) | Interface, GPS, mapa, QR Code, fotografias e navegação |
| Backend | Node.js / REST | API, autenticação e regras de negócio |
| Base de dados | MySQL | Utilizadores, moradas, referências, fotografias e partilhas |
| Prototipagem | Figma | Wireframes e interfaces |
| Versionamento | GitHub | Código, documentação e controlo de versões |

### 4.3 Enquadramento nas Unidades Curriculares

**Programação para Dispositivos Móveis:**  
Flutter/Dart, Node.js, REST, integração com base de dados, Git e documentação.

**Redes e Comunicação de Dados:**  
Modelo cliente-servidor, HTTP/HTTPS e comunicação entre aplicação e API.

**Bases de Dados:**  
Modelo relacional MySQL e persistência das entidades do sistema.

**Interfaces e Usabilidade:**  
Personas, fluxos, Figma, prototipagem e testes de usabilidade.

**Matemática Discreta:**  
Estatística e exploração de Monte Carlo para estudar a incerteza da localização GPS, mediante validação docente.

### 4.4 Modelo de Domínio Preliminar

As entidades principais previstas são **Utilizador, MoradaDigital, Localizacao, Referencia, Fotografia e Partilha**.

Um Utilizador pode possuir várias MoradasDigitais; cada MoradaDigital possui uma localização e pode ter várias referências e fotografias. Cada partilha utiliza um identificador associado à morada.

---

## 5.0 Conceito Visual e Interfaces

O protótipo de interface será desenvolvido em Figma. A identidade visual utiliza como referência o conceito fornecido para o NaBanda, com uma linguagem visual simples, cores associadas à marca e destaque para a localização e para a ação principal.

> **Figura 1 — Conceito visual e fluxo base do NaBanda**
>
> O documento original apresenta nesta secção o moodboard/identidade visual e os mockups iniciais da aplicação.

### 5.1 Fluxo Principal da Aplicação

**Registo/Login → Página inicial → Criar morada → Obter GPS → Confirmar no mapa → Adicionar referências/fotografias → Guardar → Gerar código/QR → Partilhar → Consultar → Navegar**

### 5.2 Funcionalidades Principais

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

### 5.3 Tabela de Gantt

| Tarefa / Atividade | Semanas | Responsável |
|---|---|---|
| Estudo do problema e pesquisa de mercado | S1–S3 | Todos |
| Levantamento de requisitos e casos de uso | S1–S4 | Todos |
| Desenho de mockups e fluxos no Figma | S2–S5 | Jose Luemba |
| Project Charter, WBS e Proposta Inicial (M1) | S3–S4 | Claudete Oliveira |
| Modelação do Modelo E-R e base de dados MySQL | S5–S7 | Silva Nlenvo |
| Criação do servidor e API REST em Node.js | S5–S9 | Silva Nlenvo |
| Estrutura base da app móvel em Flutter / Dart | S5–S8 | Subhan Haji |
| Implementação de GPS e integração com mapas | S6–S9 | Subhan Haji |
| Geração e leitura de QR Code | S7–S9 | Subhan Haji |
| Integração Flutter ↔ Node.js REST API | S7–S9 | Silva / Subhan |
| Relatório Intermédio e entrega Milestone 2 | S8–S9 | Claudete Oliveira |
| Cálculos estatísticos e precisão GPS (Mat. Discreta) | S9–S11 | Todos |
| Testes funcionais, usabilidade e correções | S10–S13 | Jose Luemba |
| Produção de vídeo promocional e poster | S11–S13 | Claudete / Jose |
| Manual do utilizador e documentação REST final | S12–S14 | Claudete Oliveira |
| Relatório Final (M3) e teste final no telemóvel | S13–S14 | Todos |

**Fases do projeto:**

- **Semanas 1 a 4:** Fase 1 — Milestone 1 (Proposta, Requisitos, WBS e Mockups)
- **Semanas 5 a 9:** Fase 2 — Milestone 2 (Protótipo Alfa, BD MySQL e Servidor REST)
- **Semanas 10 a 14:** Fase 3 — Milestone 3 (Versão Final, Vídeo, Poster e Apresentação)

---

## 6.0 Planos de Trabalho

### Project Charter

**Projeto:** NaBanda

**Problema:** Dificuldade em comunicar determinadas localizações através de moradas convencionais.

**Objetivo:** Criar e partilhar moradas digitais através de GPS, referências, fotografias e identificador único.

**Público-alvo:** Utilizadores de smartphones, residentes, visitantes, entregas e prestadores de serviços.

**Âmbito:** Criação, consulta, edição, gestão e partilha de moradas.

**Fora do âmbito:** Substituição de sistemas oficiais de endereçamento e utilização de dados reais.

**Riscos:** Precisão do GPS, rede, permissões, privacidade e dependência de serviços externos.

### WBS

1. **Planeamento:** Problema, pesquisa, requisitos e documentação inicial.
2. **UX/UI:** Personas, fluxos, Figma e testes de usabilidade.
3. **Backend:** MySQL, API REST, autenticação e regras de negócio.
4. **Mobile:** Flutter, GPS, mapas, QR Code e fotografias.
5. **Testes:** Testes funcionais, integração e usabilidade.
6. **Entrega:** Documentação, GitHub, demonstração e apresentação.

---

## 7.0 Divisão de Tarefas

A divisão identifica responsabilidades principais, mas todos os elementos participarão na integração, testes e documentação.

| Elemento | Tarefas principais | Subtarefas |
|---|---|---|
| **Claudete Oliveira** | Gestão do projeto e documentação | Planeamento, GitHub, relatório e apresentação |
| **Subhan Haji** | Desenvolvimento da aplicação móvel | Flutter/Dart, interface, GPS, mapas e QR Code |
| **Silva Nlenvo** | Backend e dados | API REST, MySQL, autenticação e integração |
| **Jose Luemba** | UX/UI, testes e integração | Figma, usabilidade, testes funcionais e apoio na integração |

---

## 8.0 Conclusão

O NaBanda apresenta uma proposta de aplicação móvel orientada para a criação e partilha de moradas digitais. O programa combina localização GPS com informação contextual, permitindo que o utilizador transforme uma posição física numa referência que pode ser reutilizada e partilhada.

O funcionamento previsto cobre todo o ciclo da morada: criação da conta, obtenção e confirmação da localização, introdução de referências e fotografias, geração de código e QR Code, partilha, consulta, gestão e navegação. A arquitetura proposta separa aplicação móvel, API REST e base de dados, permitindo que cada componente seja desenvolvido e testado de forma independente.

Para o Milestone 1, a proposta estabelece os requisitos, casos de teste, arquitetura, tecnologias, mockups e plano de trabalho necessários para avançar para a implementação. Nas fases seguintes serão refinados os modelos, protótipos e serviços, mantendo dados fictícios para desenvolvimento e demonstração.

**Repositório GitHub:** [NaBanda](https://github.com/claudeteoliveiraa/NaBanda.git)

---

## 9.0 Declaração de Utilização de Inteligência Artificial

No âmbito do desenvolvimento do projeto NaBanda para a unidade curricular de Projeto de Desenvolvimento Móvel, declara-se que foram utilizadas ferramentas de Inteligência Artificial Generativa (IA) com caráter estritamente auxiliar e de suporte ao trabalho da equipa.

A IA foi empregue como ferramenta de apoio nas seguintes tarefas:

- **Estruturação e Revisão Documental:** Apoio na organização de tópicos, revisão gramatical e formatação de tabelas (como o alinhamento visual do Gráfico de Gantt) em conformidade com as orientações do briefing.
- **Brainstorming e Refinamento de Casos de Utilização:** Auxílio na formulação textual detalhada dos fluxos de interação e casos de uso da aplicação.
- **Preparação da Comunicação do Projeto:** Apoio na síntese de conteúdos e na organização dos tópicos para o pitch de apresentação e estruturação dos slides.

A conceção da ideia original, a definição da arquitetura técnica (Flutter, Node.js, REST e MySQL), a prototipagem das interfaces no Figma, o desenvolvimento do código-fonte e todas as tomadas de decisão foram realizadas e validadas integralmente pelos membros do grupo de trabalho.

---

## 10.0 Bibliografia

- what3words — documentação oficial
- Google Maps — documentação oficial
- Android Developers — Kotlin e Jetpack Compose
- Node.js — documentação oficial
- MySQL — documentação oficial
