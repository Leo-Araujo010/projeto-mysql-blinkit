# projeto-mysql-blinkit
Um projeto pessoal para demonstração de habilidade em MySQL, também com intenção de continuar aprendendo.

# Projeto Blinkit MySQL 

![Badge em SQL](https://img.shields.io/badge/SQL-MySQL-blue)
![Badge em Dados](https://img.shields.io/badge/Dados-Ecommerce-success)
![Badge em Status](https://img.shields.io/badge/Status-Concluído-brightgreen)

## Sumário
- [Visão Geral](#visão-geral)
- [Arquivos Principais](#arquivos-principais)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)
- [Objetivos e KPI’s](#objetivos-e-kpis)
- [Resultados e Insights](#resultados-e-insights)
- [Como Executar](#como-executar)
- [Próximos Passos](#próximos-passos)
- [Contatos](#contatos)

---

## Visão Geral
O **Projeto Blinkit MySQL** foi desenvolvido para demonstrar habilidades de análise de dados usando **MySQL**, focado no contexto de um e-commerce. O projeto contempla:
- Limpeza e padronização de dados
- Extração de indicadores (KPI’s)
- Interpretação de resultados e geração de insights
- Possível integração futura com ferramentas de visualização (Power BI, Tableau, etc.)

Este projeto foi estruturado para evidenciar **boas práticas** na manipulação e exploração de dados, mostrando a competência em gerar relatórios claros e objetivos voltados para a tomada de decisão.

---

## Arquivos Principais
- **`Blinkit_project.sql`**  
  Contém todas as queries utilizadas para limpeza de dados, criação de tabelas e extração de relatórios/KPI’s.

- **`docs/Projeto Blinkit MySQL_ Documento Técnico.pdf`**  
  Documento técnico com detalhamento das etapas do projeto, objetivos, resultados e análises realizadas.

---

## Tecnologias Utilizadas
- **MySQL** para consultas, tratamento e extração de dados.
- **SQL Workbench** (ou similar) como IDE de desenvolvimento das queries.
- **Power BI / Excel / etc.** (Opcional) para visualização de dados.

---

## Objetivos e KPI’s
### 1. Objetivos Principais
- **Analisar a performance de vendas** e a satisfação dos clientes em uma plataforma de comércio eletrônico.
- **Identificar oportunidades de otimização** de inventário.
- **Criar relatórios** que auxiliem na tomada de decisão.

### 2. KPI’s Definidos
1. **Total de vendas**  
2. **Média de vendas**  
3. **Número de itens vendidos**  
4. **Média das avaliações dos clientes**  

Outras análises específicas foram realizadas, como total de vendas por conteúdo de gordura do produto, tipo de item, idade do estabelecimento, entre outras.

---

## Resultados e Insights
- **Total de Vendas**: Aproximadamente 1,54M de rúpias indianas  
- **Média de Vendas**: 180,87 rúpias indianas  
- **Número de Itens**: Quantidade total de linhas (ex.: 8.523 itens)  
- **Média de Avaliações**: ~3,96 estrelas  

Além disso, foi possível concluir que:
- **Vendas segmentadas** por `Low Fat` e `Regular` demonstraram maior participação de produtos `Low Fat`.  
- **Análises por localidade** (Tier 1, Tier 2, etc.) evidenciaram concentrações de vendas em determinadas regiões.  
- **Idade do estabelecimento** afeta diretamente o volume de vendas, sendo estabelecimentos mais antigos com maior volume.

Para mais detalhes das análises, consulte o arquivo [Projeto Blinkit MySQL_ Documento Técnico.pdf](Docs//Projeto%20Blinkit%20MySQL_%20Documento%20Técnico.pdf).

---

## Como Executar
1. **Importe o SQL**:  
   - Abra seu MySQL Workbench (ou outra ferramenta de sua preferência).
   - Execute o script `Blinkit_project.sql` para criar as tabelas e realizar as consultas.
   
2. **Verifique as Tabelas**:  
   - Após a execução, você terá as tabelas limpas e prontas para análise.
   - Você pode rodar cada query individualmente para ver os resultados.

3. **Visualizações (Opcional)**:  
   - Caso deseje criar dashboards, utilize a base resultante das queries em ferramentas como Power BI ou Excel.

---

## Próximos Passos
- **Implementar painéis** em Power BI ou Tableau para visualizar os resultados de forma interativa.  
- **Automatizar** a coleta e atualização desses dados (via Python, por exemplo).  
- **Adicionar testes** de qualidade de dados e cenários hipotéticos para aumentar a robustez do projeto.

---

## Contatos
- **LinkedIn**: [Seu Nome](https://www.linkedin.com/in/seunome/)
- **E-mail**: [seuemail@exemplo.com](mailto:seuemail@exemplo.com)

Sinta-se à vontade para contribuir ou dar feedback sobre este projeto!
