CREATE DATABASE PruebaValueTech;
USE PruebaValueTech


--TABLAS
CREATE TABLE dbo.Region
 (
 IdRegion INT PRIMARY KEY IDENTITY(1,1) NOT NULL ,
 Region VARCHAR(120)
 )

CREATE TABLE dbo.Comuna(
IdComuna INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
idRegion INT NOT NULL,
Comuna varchar(128) ,
InformacionAdicional xml,
CONSTRAINT FK_IdRegion_Region FOREIGN KEY (idRegion)
REFERENCES dbo.Region(idRegion)
)

--POBLAR TABLAS

INSERT dbo.Region (Region) VALUES ('Region de  Arica y Parinacota')
INSERT dbo.Region (Region) VALUES ('Region de  Tarapacá')
INSERT dbo.Region (Region) VALUES ('Region de  Antofagasta')
INSERT dbo.Region (Region) VALUES ('Region de  Atacama')
INSERT dbo.Region (Region) VALUES ('Region de  Coquimbo')
INSERT dbo.Region (Region) VALUES ('Region de  Valparaíso')
INSERT dbo.Region (Region) VALUES ('Region de  Lib. Gral. Bernardo OHiggins')
INSERT dbo.Region (Region) VALUES ('Region de  Maule')
INSERT dbo.Region (Region) VALUES ('Region de  Ñuble')
INSERT dbo.Region (Region) VALUES ('Region de  Biobío')
INSERT dbo.Region (Region) VALUES ('Region de  La Araucanía')
INSERT dbo.Region (Region) VALUES ('Region de  Los Ríos')
INSERT dbo.Region (Region) VALUES ('Region de  Los Lagos')
INSERT dbo.Region (Region) VALUES ('Region de  Aysén del General Carlos Ibáñez del Campo')
INSERT dbo.Region (Region) VALUES ('Region de  Metropolitana de Santiago')

INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (1, 'Arica', '<info><Superficie>4799,4</Superficie><Poblacion Densidad="51.6">247552</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (1, 'Camarones', '<info><Superficie>3927</Superficie><Poblacion Densidad="0.31">1233</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (1, 'Putre', '<info><Superficie>5902,5</Superficie><Poblacion Densidad="0.43">2515</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (1, 'General Lagos', '<info><Superficie>2244,4</Superficie><Poblacion Densidad="0.36">810</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (2, 'Iquique', '<info><Superficie>2242,1</Superficie><Poblacion Densidad="99,6">223463</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (2, 'Alto Hospicio', '<info><Superficie>572.9</Superficie><Poblacion Densidad="226,8">129999</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (2, 'Pozo Almonte', '<info><Superficie>13765,8</Superficie><Poblacion Densidad="1.26">17395</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (2, 'Camiña', '<info><Superficie>2200,2</Superficie><Poblacion Densidad="0.62">1375</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (2, 'Colchane', '<info><Superficie>4015,6</Superficie><Poblacion Densidad="0.39">1583</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (2, 'Huara', '<info><Superficie>10474,6</Superficie><Poblacion Densidad="0.29">3000</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (2, 'Pica', '<info><Superficie>8934,3</Superficie><Poblacion Densidad="0,66">5958</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (3, 'Antofagasta', '<info><Superficie>30718,1</Superficie><Poblacion Densidad="13.8">425725</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (3, 'Mejillones', '<info><Superficie>3803,9</Superficie><Poblacion Densidad="3.88">14776</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (3, 'Sierra Gorda', '<info><Superficie>12886</Superficie><Poblacion Densidad="0.14">1746</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (3, 'Taltal', '<info><Superficie>20405,1</Superficie><Poblacion Densidad="0.67">13657</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (3, 'Calama', '<info><Superficie>15596,9</Superficie><Poblacion Densidad="12.2">190336</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (3, 'Ollagüe', '<info><Superficie>2964</Superficie><Poblacion Densidad="0.09">287</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (3, 'San Pedro de Atacama', '<info><Superficie>23439</Superficie><Poblacion Densidad="0.45">10434</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (3, 'Tocopilla', '<info><Superficie>4038,8</Superficie><Poblacion Densidad="6.95">28079</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (3, 'María Elena', '<info><Superficie>12197</Superficie><Poblacion Densidad="0.55">6814</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (4, 'Copiapó', '<info><Superficie>16681,3</Superficie><Poblacion Densidad="10.2">171766</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (4, 'Caldera', '<info><Superficie>4666,6</Superficie><Poblacion Densidad="4.16">19426</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (4, 'Tierra Amarilla', '<info><Superficie>11191</Superficie><Poblacion Densidad="1.27">14312</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (4, 'Chañaral', '<info><Superficie>5772</Superficie><Poblacion Densidad="2.28">13164</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (4, 'Diego de Almagro', '<info><Superficie>18664</Superficie><Poblacion Densidad="0.77">14358</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (4, 'Vallenar', '<info><Superficie>7084</Superficie><Poblacion Densidad="8.04">57009</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (4, 'Alto del Carmen', '<info><Superficie>5939</Superficie><Poblacion Densidad="0.96">5729</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (4, 'Freirina', '<info><Superficie>3207,9</Superficie><Poblacion Densidad="2.39">7681</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (4, 'Huasco', '<info><Superficie>1601,4</Superficie><Poblacion Densidad="7.03">11264</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (5, 'La Serena', '<info><Superficie>1892,8</Superficie><Poblacion Densidad="131.8">249656</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (5, 'Coquimbo', '<info><Superficie>1429</Superficie><Poblacion Densidad="179.6">256735</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (5, 'Andacollo', '<info><Superficie>310</Superficie><Poblacion Densidad="38.0">11791</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (5, 'La Higuera', '<info><Superficie>4158,2</Superficie><Poblacion Densidad="1.07">4450</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (5, 'Paihuano', '<info><Superficie>1495</Superficie><Poblacion Densidad="3.12">4675</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (5, 'Vicuña', '<info><Superficie>7610</Superficie><Poblacion Densidad="3.90">29741</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (5, 'Illapel', '<info><Superficie>2629</Superficie><Poblacion Densidad="12.4">32801</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (5, 'Canela', '<info><Superficie>2196,6</Superficie><Poblacion Densidad="4.34">9546</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (5, 'Los Vilos', '<info><Superficie>1823,8</Superficie><Poblacion Densidad="12.8">23374</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (5, 'Salamanca', '<info><Superficie>3445</Superficie><Poblacion Densidad="8.44">29110</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (5, 'Ovalle', '<info><Superficie>3835</Superficie><Poblacion Densidad="31.6">121269</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (5, 'Combarbalá', '<info><Superficie>2257,5</Superficie><Poblacion Densidad="6.14">13884</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (5, 'Monte Patria', '<info><Superficie>4366,9</Superficie><Poblacion Densidad="7.44">32527</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (5, 'Punitaqui', '<info><Superficie>1339</Superficie><Poblacion Densidad="9.08">12165</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (5, 'Río Hurtado', '<info><Superficie>2180</Superficie><Poblacion Densidad="2.01">4372</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Valparaíso', '<info><Superficie>401.6</Superficie><Poblacion Densidad="810.2">315732</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Casablanca', '<info><Superficie>953</Superficie><Poblacion Densidad="30.6">29170</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Concón', '<info><Superficie>76</Superficie><Poblacion Densidad="603.8">45889</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Juan Fernández', '<info><Superficie>149.4</Superficie><Poblacion Densidad="6.93">1033</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Puchuncaví', '<info><Superficie>300</Superficie><Poblacion Densidad="66.9">20071</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Quintero', '<info><Superficie>148</Superficie><Poblacion Densidad="244.1">36135</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Viña del Mar', '<info><Superficie>121.6</Superficie><Poblacion Densidad="2962">361371</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Isla de Pascua', '<info><Superficie>163.6</Superficie><Poblacion Densidad="50.4">8277</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Los Andes', '<info><Superficie>1248</Superficie><Poblacion Densidad="54.5">68093</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Calle Larga', '<info><Superficie>321.7</Superficie><Poblacion Densidad="51.1">16482</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Rinconada', '<info><Superficie>122.5</Superficie><Poblacion Densidad="91.5">11263</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'San Esteban', '<info><Superficie>681</Superficie><Poblacion Densidad="30.3">20643</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'La Ligua', '<info><Superficie>1163</Superficie><Poblacion Densidad="32.4">37739</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Cabildo', '<info><Superficie>1455</Superficie><Poblacion Densidad="14.2">20663</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Papudo', '<info><Superficie>64.3</Superficie><Poblacion Densidad="96.8">6201</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Petorca', '<info><Superficie>1517</Superficie><Poblacion Densidad="6.95">10558</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Zapallar', '<info><Superficie>288</Superficie><Poblacion Densidad="27.7">7994</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Quillota', '<info><Superficie>302</Superficie><Poblacion Densidad="323">97572</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'La Calera', '<info><Superficie>60.5</Superficie><Poblacion Densidad="878.5">53591</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Hijuelas', '<info><Superficie>267</Superficie><Poblacion Densidad="71.5">19099</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'La Cruz', '<info><Superficie>78</Superficie><Poblacion Densidad="324.6">25321</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Nogales', '<info><Superficie>405</Superficie><Poblacion Densidad="58">23490</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'San Antonio', '<info><Superficie>405</Superficie><Poblacion Densidad="238.9">96761</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Algarrobo', '<info><Superficie>176</Superficie><Poblacion Densidad="86.2">15174</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Cartagena', '<info><Superficie>246</Superficie><Poblacion Densidad="103">25357</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'El Quisco', '<info><Superficie>51</Superficie><Poblacion Densidad="347.8">17742</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'El Tabo', '<info><Superficie>99</Superficie><Poblacion Densidad="144.8">14338</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Santo Domingo', '<info><Superficie>536</Superficie><Poblacion Densidad="22.2">11934</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'San Felipe', '<info><Superficie>186</Superficie><Poblacion Densidad="448.8">83494</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Catemu', '<info><Superficie>361.6</Superficie><Poblacion Densidad="42">15213</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Llay-Llay', '<info><Superficie>349.1</Superficie><Poblacion Densidad="76">26533</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Panquehue', '<info><Superficie>121.9</Superficie><Poblacion Densidad="62.5">7633</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Putaendo', '<info><Superficie>1474</Superficie><Poblacion Densidad="11.9">17645</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Santa María', '<info><Superficie>166.3</Superficie><Poblacion Densidad="98.5">16367</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Quilpué', '<info><Superficie>536.9</Superficie><Poblacion Densidad="311.1">167085</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Limache', '<info><Superficie>294</Superficie><Poblacion Densidad="169.8">49931</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Olmué', '<info><Superficie>232</Superficie><Poblacion Densidad="83">19266</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES ( 6, 'Villa Alemana', '<info><Superficie>97</Superficie><Poblacion Densidad="1436,1">139310</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Rancagua', '<info><Superficie>260.3</Superficie><Poblacion Densidad="1020">265211</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Codegua', '<info><Superficie>287</Superficie><Poblacion Densidad="49.1">14096</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Coinco', '<info><Superficie>98</Superficie><Poblacion Densidad="79.9">7831</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Coltauco', '<info><Superficie>225</Superficie><Poblacion Densidad="94.5">21263</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Doñihue', '<info><Superficie>78</Superficie><Poblacion Densidad="291">22700</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Graneros', '<info><Superficie>113</Superficie><Poblacion Densidad="323">36504</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Las Cabras', '<info><Superficie>749</Superficie><Poblacion Densidad="35.7">26740</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Machalí', '<info><Superficie>2597</Superficie><Poblacion Densidad="23.1">59913</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Malloa', '<info><Superficie>113</Superficie><Poblacion Densidad="125.3">14163</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Mostazal', '<info><Superficie>524</Superficie><Poblacion Densidad="52.4">27462</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Olivar', '<info><Superficie>45</Superficie><Poblacion Densidad="324.9">14624</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Peumo', '<info><Superficie>153.1</Superficie><Poblacion Densidad="97.7">14952</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Pichidegua', '<info><Superficie>320</Superficie><Poblacion Densidad="64.8">20743</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Quinta de Tilcoco', '<info><Superficie>93</Superficie><Poblacion Densidad="149.2">13877</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Rengo', '<info><Superficie>755</Superficie><Poblacion Densidad="84.3">63710</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Requínoa', '<info><Superficie>673</Superficie><Poblacion Densidad="45.1">30371</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'San Vicente', '<info><Superficie>497.8</Superficie><Poblacion Densidad="101.6">50617</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Pichilemu', '<info><Superficie>749.1</Superficie><Poblacion Densidad="23.8">17882</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'La Estrella', '<info><Superficie>435</Superficie><Poblacion Densidad="7.15">3114</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Litueche', '<info><Superficie>619</Superficie><Poblacion Densidad="10.9">6765</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Marchigüe', '<info><Superficie>660</Superficie><Poblacion Densidad="11.5">7632</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Navidad', '<info><Superficie>300</Superficie><Poblacion Densidad="23">6904</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Paredones', '<info><Superficie>562</Superficie><Poblacion Densidad="11.2">6349</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'San Fernando', '<info><Superficie>2441</Superficie><Poblacion Densidad="32.2">78642</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Chépica', '<info><Superficie>503</Superficie><Poblacion Densidad="31.6">15925</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Chimbarongo', '<info><Superficie>498</Superficie><Poblacion Densidad="75.6">37696</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Lolol', '<info><Superficie>597</Superficie><Poblacion Densidad="12.2">7289</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Nancagua', '<info><Superficie>111</Superficie><Poblacion Densidad="172.4">19141</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Palmilla', '<info><Superficie>237</Superficie><Poblacion Densidad="56.1">13299</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Peralillo', '<info><Superficie>282.6</Superficie><Poblacion Densidad="41.8">11848</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Placilla', '<info><Superficie>146.9</Superficie><Poblacion Densidad="62.3">9164</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Pumanque', '<info><Superficie>441</Superficie><Poblacion Densidad="8">3531</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (7, 'Santa Cruz', '<info><Superficie>419.5</Superficie><Poblacion Densidad="97.8">41096</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Talca', '<info><Superficie>232</Superficie><Poblacion Densidad="1016">236724</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Constitución', '<info><Superficie>1344</Superficie><Poblacion Densidad="37.4">50348</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Curepto', '<info><Superficie>1073,8</Superficie><Poblacion Densidad="8.77">9426</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Empedrado', '<info><Superficie>565</Superficie><Poblacion Densidad="7.44">4206</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Maule', '<info><Superficie>190</Superficie><Poblacion Densidad="315.7">60000</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Pelarco', '<info><Superficie>332</Superficie><Poblacion Densidad="27.3">9083</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Pencahue', '<info><Superficie>956.8</Superficie><Poblacion Densidad="8.98">8601</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Río Claro', '<info><Superficie>431</Superficie><Poblacion Densidad="34.2">14753</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'San Clemente', '<info><Superficie>4504</Superficie><Poblacion Densidad="10.2">46292</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'San Rafael', '<info><Superficie>263.5</Superficie><Poblacion Densidad="17.9">9959</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Cauquenes', '<info><Superficie>2216</Superficie><Poblacion Densidad="19.9">50441</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Chanco', '<info><Superficie>530</Superficie><Poblacion Densidad="17.6">9331</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Pelluhue', '<info><Superficie>371</Superficie><Poblacion Densidad="21.8">8092</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Curicó', '<info><Superficie>1328</Superficie><Poblacion Densidad="123.2">149626</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Hualañé', '<info><Superficie>629</Superficie><Poblacion Densidad="16.2">10222</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Licantén', '<info><Superficie>273</Superficie><Poblacion Densidad="25.6">6989</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Molina', '<info><Superficie>1552</Superficie><Poblacion Densidad="32">49800</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Rauco', '<info><Superficie>309</Superficie><Poblacion Densidad="36.4">11248</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Romeral', '<info><Superficie>1597</Superficie><Poblacion Densidad="10.1">16170</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Sagrada Familia', '<info><Superficie>548.8</Superficie><Poblacion Densidad="35.4">19469</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Teno', '<info><Superficie>618.4</Superficie><Poblacion Densidad="49.9">30850</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Vichuquén', '<info><Superficie>426</Superficie><Poblacion Densidad="10.2">4381</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Linares', '<info><Superficie>1466</Superficie><Poblacion Densidad="68.9">101073</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Colbún', '<info><Superficie>2899,9</Superficie><Poblacion Densidad="7.78">22565</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Longaví', '<info><Superficie>1454</Superficie><Poblacion Densidad="22.5">32810</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Parral', '<info><Superficie>1638</Superficie><Poblacion Densidad="27.1">44544</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Retiro', '<info><Superficie>827</Superficie><Poblacion Densidad="25.4">21071</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'San Javier', '<info><Superficie>1313</Superficie><Poblacion Densidad="37.6">49451</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Villa Alegre', '<info><Superficie>190</Superficie><Poblacion Densidad="92.1">17512</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (8, 'Yerbas Buenas', '<info><Superficie>262</Superficie><Poblacion Densidad="73.2">19200</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Chillán', '<info><Superficie>511.2</Superficie><Poblacion Densidad="388.6">198624</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Bulnes', '<info><Superficie>425.4</Superficie><Poblacion Densidad="53.1">22607</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Chillán Viejo', '<info><Superficie>291.8</Superficie><Poblacion Densidad="115.8">33827</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'El Carmen', '<info><Superficie>664.3</Superficie><Poblacion Densidad="18.5">12334</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Pemuco', '<info><Superficie>562.7</Superficie><Poblacion Densidad="15.3">8639</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Pinto', '<info><Superficie>1164</Superficie><Poblacion Densidad="10.2">11880</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Quillón', '<info><Superficie>423</Superficie><Poblacion Densidad="44.3">18777</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'San Ignacio', '<info><Superficie>363.6</Superficie><Poblacion Densidad="45.6">16624</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Yungay', '<info><Superficie>823.5</Superficie><Poblacion Densidad="22.5">18596</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Quirihue', '<info><Superficie>589</Superficie><Poblacion Densidad="20.6">12192</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Cobquecura', '<info><Superficie>570.3</Superficie><Poblacion Densidad="9.25">5275</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Coelemu', '<info><Superficie>342.3</Superficie><Poblacion Densidad="49.2">16845</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Ninhue', '<info><Superficie>401.2</Superficie><Poblacion Densidad="13.5">5414</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Portezuelo', '<info><Superficie>282.3</Superficie><Poblacion Densidad="17.5">4940</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Ránquil', '<info><Superficie>248.3</Superficie><Poblacion Densidad="25.2">6261</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Treguaco', '<info><Superficie>313.1</Superficie><Poblacion Densidad="18.1">5696</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'San Carlos', '<info><Superficie>874</Superficie><Poblacion Densidad="64.3">56252</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Coihueco', '<info><Superficie>1776,6</Superficie><Poblacion Densidad="15.9">28375</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'Ñiquén', '<info><Superficie>493.1</Superficie><Poblacion Densidad="23.4">11567</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'San Fabián', '<info><Superficie>1568,3</Superficie><Poblacion Densidad="2.96">4654</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (9, 'San Nicolás', '<info><Superficie>490.5</Superficie><Poblacion Densidad="24.7">12172</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Concepción', '<info><Superficie>221.6</Superficie><Poblacion Densidad="1072,4">238092</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Coronel', '<info><Superficie>279.4</Superficie><Poblacion Densidad="451">125829</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Chiguayante', '<info><Superficie>71.5</Superficie><Poblacion Densidad="1266,3">91180</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Florida', '<info><Superficie>608.6</Superficie><Poblacion Densidad="19.4">11841</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Hualqui', '<info><Superficie>530.5</Superficie><Poblacion Densidad="49.3">26201</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Lota', '<info><Superficie>135.8</Superficie><Poblacion Densidad="336.3">45750</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Penco', '<info><Superficie>107.6</Superficie><Poblacion Densidad="461.7">49865</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'San Pedro de La Paz', '<info><Superficie>112.5</Superficie><Poblacion Densidad="1291,2">145906</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Santa Juana', '<info><Superficie>731.2</Superficie><Poblacion Densidad="20.2">14779</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Talcahuano', '<info><Superficie>92.3</Superficie><Poblacion Densidad="1721,1">158345</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Tomé', '<info><Superficie>494.5</Superficie><Poblacion Densidad="118.6">58729</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Hualpén', '<info><Superficie>53.5</Superficie><Poblacion Densidad="1802,3">97273</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Lebu', '<info><Superficie>561.4</Superficie><Poblacion Densidad="48.3">27100</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Arauco', '<info><Superficie>956.1</Superficie><Poblacion Densidad="40.4">38679</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Cañete', '<info><Superficie>1089,2</Superficie><Poblacion Densidad="33.9">37003</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Contulmo', '<info><Superficie>638.8</Superficie><Poblacion Densidad="9.90">6330</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Curanilahue', '<info><Superficie>994.3</Superficie><Poblacion Densidad="34">33892</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Los Álamos', '<info><Superficie>599.1</Superficie><Poblacion Densidad="37.6">22524</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Tirúa', '<info><Superficie>624.4</Superficie><Poblacion Densidad="17.6">11019</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Los Ángeles', '<info><Superficie>1748,2</Superficie><Poblacion Densidad="125.0">218515</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Antuco', '<info><Superficie>1884,1</Superficie><Poblacion Densidad="2.28">4306</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Cabrero', '<info><Superficie>639.8</Superficie><Poblacion Densidad="48">30725</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Laja', '<info><Superficie>339.8</Superficie><Poblacion Densidad="70.2">23873</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Mulchén', '<info><Superficie>1925,3</Superficie><Poblacion Densidad="16.1">31041</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Nacimiento', '<info><Superficie>934.9</Superficie><Poblacion Densidad="29.8">27944</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Negrete', '<info><Superficie>156.5</Superficie><Poblacion Densidad="66.4">10429</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Quilaco', '<info><Superficie>1123,7</Superficie><Poblacion Densidad="3.71">4179</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Quilleco', '<info><Superficie>1121,8</Superficie><Poblacion Densidad="8.94">10032</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'San Rosendo', '<info><Superficie>92.4</Superficie><Poblacion Densidad="39.2">3611</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Santa Bárbara', '<info><Superficie>1254,9</Superficie><Poblacion Densidad="11.6">14592</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Tucapel', '<info><Superficie>914.9</Superficie><Poblacion Densidad="16.6">15205</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Yumbel', '<info><Superficie>727</Superficie><Poblacion Densidad="30.4">22132</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (10, 'Alto Biobío', '<info><Superficie>2124,6</Superficie><Poblacion Densidad="3.18">6775</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Temuco', '<info><Superficie>464</Superficie><Poblacion Densidad="652.8">302931</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Carahue', '<info><Superficie>1340,6</Superficie><Poblacion Densidad="19">25486</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Cunco', '<info><Superficie>1906,5</Superficie><Poblacion Densidad="9.46">18055</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Curarrehue', '<info><Superficie>1170,7</Superficie><Poblacion Densidad="6.66">7802</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Freire', '<info><Superficie>935.2</Superficie><Poblacion Densidad="27.2">25446</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Galvarino', '<info><Superficie>568.2</Superficie><Poblacion Densidad="22.2">12633</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Gorbea', '<info><Superficie>694.5</Superficie><Poblacion Densidad="21.7">15148</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Lautaro', '<info><Superficie>901.1</Superficie><Poblacion Densidad="45.2">40746</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Loncoche', '<info><Superficie>976.8</Superficie><Poblacion Densidad="25.3">24739</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Melipeuco', '<info><Superficie>1107,3</Superficie><Poblacion Densidad="5.65">6265</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Nueva Imperial', '<info><Superficie>732.5</Superficie><Poblacion Densidad="46">33777</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Padre Las Casas', '<info><Superficie>400.7</Superficie><Poblacion Densidad="204.7">82110</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Perquenco', '<info><Superficie>330.7</Superficie><Poblacion Densidad="21.8">7223</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Pitrufquén', '<info><Superficie>580.7</Superficie><Poblacion Densidad="44.9">26096</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Pucón', '<info><Superficie>1248,5</Superficie><Poblacion Densidad="23.8">29782</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Saavedra', '<info><Superficie>400.8</Superficie><Poblacion Densidad="31.9">12793</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Teodoro Schmidt', '<info><Superficie>649.9</Superficie><Poblacion Densidad="24.2">15786</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Toltén', '<info><Superficie>860.4</Superficie><Poblacion Densidad="11.6">10055</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Vilcún', '<info><Superficie>1420,9</Superficie><Poblacion Densidad="21.6">30766</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Villarrica', '<info><Superficie>1291,1</Superficie><Poblacion Densidad="45.7">59103</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Cholchol', '<info><Superficie>427.9</Superficie><Poblacion Densidad="28.8">12341</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Angol', '<info><Superficie>1194,4</Superficie><Poblacion Densidad="46.9">56058</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Collipulli', '<info><Superficie>1295,9</Superficie><Poblacion Densidad="20.1">26148</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Curacautín', '<info><Superficie>1664</Superficie><Poblacion Densidad="10.9">18178</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Ercilla', '<info><Superficie>499.7</Superficie><Poblacion Densidad="16.9">8458</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Lonquimay', '<info><Superficie>3914,2</Superficie><Poblacion Densidad="2.82">11049</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Los Sauces', '<info><Superficie>849.8</Superficie><Poblacion Densidad="8.84">7517</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Lumaco', '<info><Superficie>1119</Superficie><Poblacion Densidad="8.98">10050</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Purén', '<info><Superficie>464.9</Superficie><Poblacion Densidad="26.2">12188</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Renaico', '<info><Superficie>267.4</Superficie><Poblacion Densidad="40.4">10833</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Traiguén', '<info><Superficie>908</Superficie><Poblacion Densidad="21.2">19314</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (11, 'Victoria', '<info><Superficie>1256</Superficie><Poblacion Densidad="28.2">35467</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (12, 'Valdivia', '<info><Superficie>1016</Superficie><Poblacion Densidad="173.9">176774</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (12, 'Corral', '<info><Superficie>767</Superficie><Poblacion Densidad="7.10">5447</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (12, 'Lanco', '<info><Superficie>532.4</Superficie><Poblacion Densidad="33.1">17652</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (12, 'Los Lagos', '<info><Superficie>1791,2</Superficie><Poblacion Densidad="11.4">20518</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (12, 'Máfil', '<info><Superficie>583</Superficie><Poblacion Densidad="12.6">7389</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (12, 'Mariquina', '<info><Superficie>1320,5</Superficie><Poblacion Densidad="17.6">23350</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (12, 'Paillaco', '<info><Superficie>896</Superficie><Poblacion Densidad="23.2">20798</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (12, 'Panguipulli', '<info><Superficie>3292</Superficie><Poblacion Densidad="10.9">35991</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (12, 'La Unión', '<info><Superficie>2137</Superficie><Poblacion Densidad="18.5">39538</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (12, 'Futrono', '<info><Superficie>2267,5</Superficie><Poblacion Densidad="6.72">15261</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (12, 'Lago Ranco', '<info><Superficie>1763,3</Superficie><Poblacion Densidad="5.83">10292</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (12, 'Río Bueno', '<info><Superficie>2211,7</Superficie><Poblacion Densidad="14.8">32925</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Puerto Montt', '<info><Superficie>1673</Superficie><Poblacion Densidad="147.0">269398</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Calbuco', '<info><Superficie>590.8</Superficie><Poblacion Densidad="62.1">36744</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Cochamó', '<info><Superficie>3910,8</Superficie><Poblacion Densidad="1.02">4006</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Fresia', '<info><Superficie>1278,1</Superficie><Poblacion Densidad="9.90">12656</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Frutillar', '<info><Superficie>831.4</Superficie><Poblacion Densidad="24.3">20223</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Los Muermos', '<info><Superficie>1245,8</Superficie><Poblacion Densidad="14.2">17817</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Llanquihue', '<info><Superficie>420.8</Superficie><Poblacion Densidad="44.2">18621</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Maullín', '<info><Superficie>860.8</Superficie><Poblacion Densidad="17.2">14894</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Puerto Varas', '<info><Superficie>4064,9</Superficie><Poblacion Densidad="11.9">48620</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Castro', '<info><Superficie>472.5</Superficie><Poblacion Densidad="100.6">47607</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Ancud', '<info><Superficie>1752,4</Superficie><Poblacion Densidad="24.2">42458</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Chonchi', '<info><Superficie>1362,1</Superficie><Poblacion Densidad="11.7">16013</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Curaco de Vélez', '<info><Superficie>80</Superficie><Poblacion Densidad="50.8">4066</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Dalcahue', '<info><Superficie>1239,4</Superficie><Poblacion Densidad="12.1">15069</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Puqueldón', '<info><Superficie>97.3</Superficie><Poblacion Densidad="43.3">4201</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Queilén', '<info><Superficie>332.9</Superficie><Poblacion Densidad="16.6">5543</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Quellón', '<info><Superficie>3244</Superficie><Poblacion Densidad="9.03">29309</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Quemchi', '<info><Superficie>440.3</Superficie><Poblacion Densidad="19.9">8783</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Quinchao', '<info><Superficie>160.7</Superficie><Poblacion Densidad="51.5">8298</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Osorno', '<info><Superficie>951</Superficie><Poblacion Densidad="182.3">173410</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Puerto Octay', '<info><Superficie>1795,7</Superficie><Poblacion Densidad="5.11">9192</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Purranque', '<info><Superficie>1458,8</Superficie><Poblacion Densidad="14.4">21080</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Puyehue', '<info><Superficie>1597,9</Superficie><Poblacion Densidad="7.37">11787</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Río Negro', '<info><Superficie>1265,7</Superficie><Poblacion Densidad="11.2">14275</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'San Juan de la Costa', '<info><Superficie>1517</Superficie><Poblacion Densidad="5.03">7639</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'San Pablo', '<info><Superficie>637.3</Superficie><Poblacion Densidad="16.5">10553</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Chaitén', '<info><Superficie>8470,5</Superficie><Poblacion Densidad="0.59">5020</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Futaleufú', '<info><Superficie>1280</Superficie><Poblacion Densidad="2.19">2806</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Hualaihué', '<info><Superficie>2787,7</Superficie><Poblacion Densidad="3.41">9525</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (13, 'Palena', '<info><Superficie>2763,7</Superficie><Poblacion Densidad="0.66">1827</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (14, 'Coyhaique', '<info><Superficie>7290,2</Superficie><Poblacion Densidad="8.39">61210</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (14, 'Lago Verde', '<info><Superficie>5422,3</Superficie><Poblacion Densidad="0.16">920</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (14, 'Aysén', '<info><Superficie>29796,4</Superficie><Poblacion Densidad="0.83">25002</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (14, 'Cisnes', '<info><Superficie>16093</Superficie><Poblacion Densidad="0.36">5828</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (14, 'Guaitecas', '<info><Superficie>620.6</Superficie><Poblacion Densidad="2.57">1599</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (14, 'Cochrane', '<info><Superficie>8599,5</Superficie><Poblacion Densidad="0.42">3685</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (14, 'OHiggins', '<info><Superficie>8182,5</Superficie><Poblacion Densidad="0.08">661</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (14, 'Tortel', '<info><Superficie>19710,6</Superficie><Poblacion Densidad="0.03">572</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (14, 'Chile Chico', '<info><Superficie>5737,1</Superficie><Poblacion Densidad="0.89">5121</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (14, 'Río Ibáñez', '<info><Superficie>5997,2</Superficie><Poblacion Densidad="0.45">2699</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (15, 'Punta Arenas', '<info><Superficie>17846,3</Superficie><Poblacion Densidad="7.95">141984</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (15, 'Laguna Blanca', '<info><Superficie>3695,6</Superficie><Poblacion Densidad="0.07">264</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (15, 'Río Verde', '<info><Superficie>17248</Superficie><Poblacion Densidad="0.01">211</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (15, 'San Gregorio', '<info><Superficie>6883,7</Superficie><Poblacion Densidad="0.09">681</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (15, 'Cabo de Hornos', '<info><Superficie>15578,7</Superficie><Poblacion Densidad="0.13">1983</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (15, 'Antártica', '<info><Superficie>1250257,6</Superficie><Poblacion Densidad="0.0001">137</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (15, 'Porvenir', '<info><Superficie>9707,4</Superficie><Poblacion Densidad="0.75">7323</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (15, 'Primavera', '<info><Superficie>4253,4</Superficie><Poblacion Densidad="0.16">694</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (15, 'Timaukel', '<info><Superficie>10758,9</Superficie><Poblacion Densidad="0.02">282</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (15, 'Natales', '<info><Superficie>49924,1</Superficie><Poblacion Densidad="0.47">23782</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (15, 'Torres del Paine', '<info><Superficie>6630</Superficie><Poblacion Densidad="0.15">1021</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Santiago', '<info><Superficie>23.2</Superficie><Poblacion Densidad="21875,9">503147</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Cerrillos', '<info><Superficie>21</Superficie><Poblacion Densidad="4236">88956</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Cerro Navia', '<info><Superficie>11</Superficie><Poblacion Densidad="12951,3">142465</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Conchalí', '<info><Superficie>10.7</Superficie><Poblacion Densidad="12654">139195</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'El Bosque', '<info><Superficie>14.2</Superficie><Poblacion Densidad="12285,7">172000</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Estación Central', '<info><Superficie>15</Superficie><Poblacion Densidad="13786,1">206792</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Huechuraba', '<info><Superficie>44.8</Superficie><Poblacion Densidad="2500,6">112528</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Independencia', '<info><Superficie>7</Superficie><Poblacion Densidad="20295">142065</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'La Cisterna', '<info><Superficie>10</Superficie><Poblacion Densidad="10043,4">100434</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'La Florida', '<info><Superficie>70.2</Superficie><Poblacion Densidad="5749">402433</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'La Granja', '<info><Superficie>10</Superficie><Poblacion Densidad="12255,7">122557</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'La Pintana', '<info><Superficie>30.6</Superficie><Poblacion Densidad="6107,5">189335</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'La Reina', '<info><Superficie>23</Superficie><Poblacion Densidad="4358,7">100252</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Las Condes', '<info><Superficie>99</Superficie><Poblacion Densidad="3341">330759</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Lo Barnechea', '<info><Superficie>1024</Superficie><Poblacion Densidad="121.1">124076</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Lo Espejo', '<info><Superficie>7</Superficie><Poblacion Densidad="14837,8">103865</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Lo Prado', '<info><Superficie>7</Superficie><Poblacion Densidad="14914,7">104403</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Macul', '<info><Superficie>12.9</Superficie><Poblacion Densidad="10356,5">134635</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Maipú', '<info><Superficie>135.5</Superficie><Poblacion Densidad="4254,4">578605</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Ñuñoa', '<info><Superficie>16.9</Superficie><Poblacion Densidad="14717,1">250192</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Pedro Aguirre Cerda', '<info><Superficie>10</Superficie><Poblacion Densidad="10780,3">107803</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Peñalolén', '<info><Superficie>54</Superficie><Poblacion Densidad="4940,7">266798</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Providencia', '<info><Superficie>14.3</Superficie><Poblacion Densidad="11267,7">157749</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Pudahuel', '<info><Superficie>197</Superficie><Poblacion Densidad="1284,9">253139</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Quilicura', '<info><Superficie>58</Superficie><Poblacion Densidad="4391,2">254694</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Quinta Normal', '<info><Superficie>13</Superficie><Poblacion Densidad="10489,8">136368</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Recoleta', '<info><Superficie>16</Superficie><Poblacion Densidad="11879,3">190070</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Renca', '<info><Superficie>24</Superficie><Poblacion Densidad="6993,3">160847</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'San Joaquín', '<info><Superficie>9.7</Superficie><Poblacion Densidad="10348,5">103485</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'San Miguel', '<info><Superficie>10.0</Superficie><Poblacion Densidad="13305,9">133059</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'San Ramón', '<info><Superficie>7</Superficie><Poblacion Densidad="12358,5">86510</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Vitacura', '<info><Superficie>28.3</Superficie><Poblacion Densidad="3456,2">96774</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Puente Alto', '<info><Superficie>88</Superficie><Poblacion Densidad="7339,8">645909</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Pirque', '<info><Superficie>445.3</Superficie><Poblacion Densidad="68.3">30433</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'San José de Maipo', '<info><Superficie>4994,8</Superficie><Poblacion Densidad="3.74">18644</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Colina', '<info><Superficie>971.2</Superficie><Poblacion Densidad="185,7">180353</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Lampa', '<info><Superficie>452</Superficie><Poblacion Densidad="280,7">126898</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Til Til', '<info><Superficie>653</Superficie><Poblacion Densidad="32.8">21477</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'San Bernardo', '<info><Superficie>155</Superficie><Poblacion Densidad="2160,2">334836</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Buin', '<info><Superficie>214</Superficie><Poblacion Densidad="512,3">109641</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Calera de Tango', '<info><Superficie>73.3</Superficie><Poblacion Densidad="390.7">28525</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Paine', '<info><Superficie>820</Superficie><Poblacion Densidad="100.9">82766</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Melipilla', '<info><Superficie>1345</Superficie><Poblacion Densidad="105.2">141612</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Alhué', '<info><Superficie>845</Superficie><Poblacion Densidad="8.76">7405</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Curacaví', '<info><Superficie>693</Superficie><Poblacion Densidad="52.5">36430</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'María Pinto', '<info><Superficie>393.5</Superficie><Poblacion Densidad="37.8">14926</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'San Pedro', '<info><Superficie>788</Superficie><Poblacion Densidad="15.1">11953</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Talagante', '<info><Superficie>126</Superficie><Poblacion Densidad="649.5">81838</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'El Monte', '<info><Superficie>118</Superficie><Poblacion Densidad="339.1">40014</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Isla de Maipo', '<info><Superficie>189</Superficie><Poblacion Densidad="212.5">40171</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Padre Hurtado', '<info><Superficie>80.8</Superficie><Poblacion Densidad="915.9">74188</Poblacion></info>');
INSERT Comuna(idRegion, Comuna, InformacionAdicional) VALUES (16, 'Peñaflor', '<info><Superficie>69</Superficie><Poblacion Densidad="1464,6">101058</Poblacion></info>');



--Stored Procedured

USE [PruebaValueTech]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SP_Obtener_Info_Comuna]

		@idComuna INT = 0
AS
BEGIN
	SELECT InformacionAdicional FROM Comuna WHERE
	IdComuna = @idComuna
END


USE [PruebaValueTech]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[SP_Obtener_Comuna_Por_Region](
 @IdRegion INT = 0
)
AS
BEGIN
   SELECT IdComuna, Comuna FROM Comuna WHERE idRegion = @idRegion;
END

USE [PruebaValueTech]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Obtener_Regiones]
AS
BEGIN
   SELECT IdRegion, Region FROM Region
END

USE [PruebaValueTech]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  PROCEDURE [dbo].[SP_Update_Info_Comuna](
 @IdComuna INT = 0,
 @infoAdicional NVARCHAR(300) 

)
AS
BEGIN
   UPDATE Comuna set 
   InformacionAdicional = @infoAdicional
   WHERE 
   IdComuna = @IdComuna;
END