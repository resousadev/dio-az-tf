# 🌐 Projeto Terraform: Infraestrutura no Azure

Este projeto utiliza o **Terraform** para provisionar recursos no **Microsoft Azure**. Ele cria um grupo de recursos, um servidor SQL e um banco de dados SQL. 🚀

## 📂 Estrutura do Projeto

- **`main.tf`**: Define os recursos a serem criados no Azure.
- **`variables.tf`**: Contém as variáveis utilizadas no projeto.
- **`.gitignore`**: Arquivo para ignorar arquivos desnecessários no controle de versão.

## 🛠️ Recursos Criados

1. **Grupo de Recursos**: Um container lógico para os recursos no Azure.
2. **Servidor SQL**: Um servidor SQL configurado com login e senha.
3. **Banco de Dados SQL**: Um banco de dados hospedado no servidor SQL.

## 🚀 Como Usar

1. **Pré-requisitos**:
   - Instale o [Terraform](https://www.terraform.io/downloads.html).
   - Configure uma conta no [Microsoft Azure](https://azure.microsoft.com/).

2. **Clone o repositório**:
   ```bash
   git clone https://github.com/resousadev/dio-az-tf.git
   cd dio-az-tf

3. **Inicialize o Terraform**:
   ```bash
   terraform init
   ```

4. **Visualize o plano de execução**:
   ```bash
   terraform plan
   ```

5. **Aplique as configurações**:
   ```bash
   terraform apply
   ```
   Confirme digitando `yes` quando solicitado.

6. **Verifique os recursos no portal do Azure**.