# 🚀 Automação de Testes de API com Robot Framework e Allure

![GitHub repo size](https://img.shields.io/github/repo-size/pedrothh/automacao-api-robot-framework)
![GitHub contributors](https://img.shields.io/github/contributors/pedrothh/automacao-api-robot-framework)
![GitHub last commit](https://img.shields.io/github/last-commit/pedrothh/automacao-api-robot-framework)
![GitHub stars](https://img.shields.io/github/stars/pedrothh/automacao-api-robot-framework?style=social)

## 📌 Descrição

Este projeto é uma **automação de testes de API** utilizando **Robot Framework** para requisições HTTP, com escrita de cenários em BDD e **Allure** para geração de relatórios detalhados.


## 🛠️ Tecnologias Utilizadas

- **Python 3+**
- **Robot Framework**
- **Allure Reports**
- **GitHub Actions (CI/CD)**

## ✅ Como Executar os Testes

### 🔹 Pré-requisitos

- **Python 3+** instalado
- **Robot Framework** instalado (`robot --version` para testar)
- **Allure** instalado (`allure --version` para testar)

### 🔹 Passos para execução

#### **1️⃣ Clonar o repositório**
```sh
git clone https://github.com/pedrothh/automacao-api-robot-framework.git
cd automacao-api-robot-framework
```

#### **2️⃣ Executar os testes**
```sh
robot --outputdir results --listener allure_robotframework:allure-results LoginScenarios.robot  
```

#### **3️⃣ Gerar e visualizar o relatório do Allure**
```sh
allure generate allure-results -o allure-report --clean                                         
allure serve
```

📜 Licença

Este projeto é licenciado sob a MIT License - veja o arquivo LICENSE para mais detalhes.
