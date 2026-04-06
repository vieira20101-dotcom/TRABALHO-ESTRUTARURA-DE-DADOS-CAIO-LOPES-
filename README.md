# 📚 Trabalho P1 – Estrutura de Dados - Caio Lopes 

## Sistema de Gerenciamento de Fila de Atendimento

---

## 👨‍🏫 Objetivo
Desenvolver um sistema simples que simule uma fila de atendimento, utilizando **obrigatoriamente o conceito de lista encadeada**.

O objetivo do trabalho é avaliar a compreensão de **estruturas de dados dinâmicas** e sua adaptação a diferentes linguagens de programação.

---

## 🧩 Contexto do Problema
Você deverá implementar um sistema que simula uma fila de atendimento, como por exemplo:

- Atendimento em banco  
- Fila de hospital  
- Atendimento em suporte técnico  
- Restaurante ou fila de pedidos  

---

## ⚙️ Funcionalidades obrigatórias
O sistema deve permitir:

- Inserir pessoa na fila  
- Atender próxima pessoa (remoção do início)  
- Exibir fila atual  
- Buscar pessoa na fila  
- Contar quantidade de elementos  

---

## 🧠 Requisito Obrigatório
A estrutura de dados **DEVE ser implementada manualmente como lista encadeada**.

### ❌ Não é permitido (salvo exceções conforme a linguagem):
- Arrays  
- Listas prontas da linguagem (`List`, `Vec`, `ArrayList`, etc.)  

### ✔ Deve existir:
- Estrutura de nó (`Node`)  
- Referência para o próximo elemento  
- Controle da lista (`head`)  

---

## 🖥️ Interface
Você pode escolher:

- Interface via terminal (CLI) → mais simples  
- Interface web simples → mais complexa (**pontuação extra**)  

---

## 👨‍💻 Linguagens por aluno

| Aluno   | Linguagem |
|--------|----------|
| Mahgid | Elixir   |
| Samuel | Rust     |
| Robert | Crystal  |
| João   | Java     |
| Rafael | Nim      |
| Alberto| Julia    |
| Caio   | Lean     |

---

## 🧠 Sobre ponteiros e referências

Nem todas as linguagens utilizam ponteiros da mesma forma.  
A implementação deve respeitar o paradigma de cada linguagem:

| Linguagem | Modelo |
|----------|--------|
| Rust     | Ponteiros seguros (`Box`, `Option`) |
| Java     | Referências de objetos |
| Crystal  | Referências |
| Elixir   | Estrutura recursiva imutável |
| Nim      | Ponteiros ou referências (`ref`) |
| Julia    | Estruturas mutáveis com referência |
| Lean     | Tipo indutivo recursivo |

---

## 📦 Entrega

### 🔹 Estrutura
Será utilizado um modelo com:

- 1 repositório principal  
- 1 repositório por aluno  

---

### 🔹 Repositório principal
Deve conter:

- Este enunciado  
- Lista de links para os repositórios dos alunos  
- Passo a passo de como instalar e rodar o projeto  

#### Exemplo:

```markdown
## Repositórios dos alunos

- Mahgid (Elixir): https://github.com/usuario/edc-p1-2026-projeto-elixir  
- Samuel (Rust): https://github.com/usuario/edc-p1-2026-projeto-rust  
- Robert (Crystal): https://github.com/usuario/edc-p1-2026-projeto-crystal  
- João (Java): https://github.com/usuario/edc-p1-2026-projeto-java  
- Rafael (Nim): https://github.com/usuario/edc-p1-2026-projeto-nim  
- Alberto (Julia): https://github.com/usuario/edc-p1-2026-projeto-julia  
- Caio (Lean): https://github.com/usuario/edc-p1-2026-projeto-lean  
```

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Sistema de Fila de Senhas em Lean 4

Este projeto é uma implementação simples de um sistema de gerenciamento de fila de senhas, desenvolvido em **Lean 4**. O sistema permite adicionar pessoas à fila, atendê-las, buscar posições e visualizar o tamanho atual da fila através de uma interface de linha de comando (CLI).

## 🚀 Funcionalidades

- **Adicionar (1):** Insere uma nova pessoa na fila com um ID incremental.
- **Atender (2):** Remove e exibe a próxima pessoa a ser atendida (primeiro a entrar, primeiro a sair).
- **Buscar (3):** Localiza uma pessoa pelo nome na fila e retorna seu ID.
- **Tamanho (4):** Exibe o número total de pessoas aguardando na fila.
- **Sair (0):** Encerra o sistema.

---

## 🛠️ Pré-requisitos

Para executar este projeto, você precisará ter o **Lean 4** instalado em sua máquina.

1. **Instalar elan:** O gerenciador de versões do Lean.
   - No Windows (PowerShell):
     ```powershell
     curl -sSfL https://github.com/leanprover/elan/releases/download/v3.0.0/elan-init.ps1 | powershell -c -
     ```
   - No Linux/macOS:
     ```bash
     curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh
     ```

2. **Reiniciar o terminal** após a instalação para que o comando `lake` esteja disponível.

---

## 🏗️ Instalação e Execução

Siga os passos abaixo para iniciar o projeto:

### 1. Clonar ou Acessar o Diretório
Navegue até a pasta do projeto:
```bash
cd fila
```

### 2. Compilar e Executar
A forma mais rápida de iniciar o sistema é usando o comando `lake exe`:
```bash
lake exe fila
```

Ou, se preferir compilar manualmente antes de rodar:
```bash
lake build
./.lake/build/bin/fila
```

---

## 📂 Estrutura do Projeto

- `Main.lean`: Contém a lógica principal do programa, o menu interativo e as definições das estruturas de dados.
- `lakefile.toml`: Arquivo de configuração do gerenciador de pacotes Lake.
- `lean-toolchain`: Especifica a versão exata do Lean utilizada no projeto.

---

## 📝 Exemplo de Uso

Ao iniciar o programa, você verá o menu:
```text
Fila atual: Vazia
1:Adicionar 2:Atender 3:Buscar 4:Tamanho 0:Sair
Opção: 
