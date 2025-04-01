-- Primeira Etapa do projeto: Limpeza do dataset! --

select *
from blinkit_data;

-- item fat content e regularizar essa coluna --
update blinkit_data
set `Item Fat Content` = 
case 
	when `Item Fat Content` in ('LF', 'low fat') then 'Low Fat'
	when `Item Fat Content` = 'reg' then 'Regular'
	else `Item Fat Content` 
end;

select distinct `Item Fat Content`
from blinkit_data;

-- Segunda Etapa: As analises do cliente --

-- Total de vendas --
select cast(sum(`Total Sales`)/1000000 as decimal(10,2)) as total_vendas_milhoes
from blinkit_data
;

-- Média das vendas --

Select cast(avg(`Total Sales`) as decimal(10,2)) as media_vendas
from blinkit_data
;

-- Numero de itens vendidos --
select count(*)
from blinkit_data
;

-- Média das avaliações dos clientes pelo item comprado --

select cast(avg(Rating) as decimal(10,2)) as media_avaliacao
from blinkit_data;

-- Objetivos Especificos --

-- Soma dos valores de vendas por conteudo de gordura do item --
select `Item Fat Content`, cast(sum(`Total Sales`) as decimal (10,2) )as total_vendas_gordura
from blinkit_data
group by `Item Fat Content`
order by total_vendas_gordura desc
;

-- podemos inclusive entregar informações adicionais, com base no que fizemos para os KPI's iniciais --

select `Item Fat Content`, 
	cast(sum(`Total Sales`) as decimal (10,2) )as total_vendas_gordura,
    cast(avg(`Total Sales`) as decimal(10,2)) as media_vendas,
    count(*) as qntd_itens,
	cast(avg(Rating) as decimal(10,2)) as media_avaliacao
from blinkit_data
group by `Item Fat Content`
order by total_vendas_gordura desc
;

-- Total do valor de vendas pelo tipo do item --

select `Item Type`, 
	cast(sum(`Total Sales`) as decimal (10,2) )as total_vendas_tipo,
    cast(avg(`Total Sales`) as decimal(10,2)) as media_vendas,
    count(*) as qntd_itens,
	cast(avg(Rating) as decimal(10,2)) as media_avaliacao
from blinkit_data
group by `Item Type`
order by total_vendas_tipo desc
;

-- Conteúdo de gordura por estabelecimento para o total de vendas--
-- Para isso iremos realizar uma pivot table, para facilitar a visualização. --
-- Podemos nos basear no codigo do objetivo passado e realizar algumas mudanças: --

select `Outlet Location Type`,
cast(sum(case
			when `Item Fat Content` = 'Low Fat' then `Total Sales` else 0 end)as decimal(10,2)) as `Baixa Gordura`,
cast(sum(case
			when `Item Fat Content` = 'Regular' then `Total Sales` else 0 end)as decimal(10,2)) as `Regular`
from blinkit_data
group by `Outlet Location Type`;

-- Total de vendas por idade de estabelecimento-- 

select `Outlet Establishment Year`,
	cast(sum(`Total Sales`) as decimal (10,2)) as total_vendas
from blinkit_data
group by `Outlet Establishment Year`
order by `Outlet Establishment Year` asc;

-- Requisitos de visualização --

-- Porcentagem de vendas por tamanho dos estabelecimentos --

SELECT 
    `Outlet Size`, 
    CAST(SUM(`Total Sales`) AS DECIMAL(10,2)) AS total_vendas,
    CAST((SUM(`Total Sales`) * 100.0 / SUM(SUM(`Total Sales`)) OVER()) AS DECIMAL(10,2)) AS porcentagem_vendas
FROM blinkit_data
GROUP BY `Outlet Size`
ORDER BY total_vendas DESC;

-- Vendas por tipo de estabelecimento --
SELECT `Outlet Location Type`, 
    CAST(SUM(`Total Sales`) AS DECIMAL(10,2)) AS total_vendas
FROM blinkit_data
GROUP BY `Outlet Location Type`
ORDER BY total_vendas DESC;

-- todas as metricas --

SELECT `Outlet Type`, 
CAST(SUM(`Total Sales`) AS DECIMAL(10,2)) AS total_vendas,
		CAST(AVG(`Total Sales`) AS DECIMAL(10,0)) AS media_vendas,
		COUNT(*) AS qtnd_itens,
		CAST(AVG(`Rating`) AS DECIMAL(10,2)) AS media_avaliacao,
		CAST(AVG(`Item Visibility`) AS DECIMAL(10,2)) AS visibilidade_itens
FROM blinkit_data
GROUP BY `Outlet Type`
ORDER BY total_vendas DESC;


