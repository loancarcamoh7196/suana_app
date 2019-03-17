#Inserciones para Region
Region.destroy_all
regions = [
	{   
		id: 1, 
		name: 'Arica y Parinacota', 
		ordinal: 'XV'
	}, {
		id: 2,
		name: 'Tarapacá',
		ordinal: 'I'
	}, {
		id: 3,
		name: 'Antofagasta', ordinal: 'II'
	}, {
		id:4, 
		name:'Atacama', 
		ordinal: 'III'
	}, {
		id: 5,
		name:'Coquimbo',
		ordinal: 'IV'
	}, {
		id: 6,
		name: 'Valparaiso',
		ordinal: 'V'
	}, {
		id: 7,
		name: 'Metropolitana de Santiago',
		ordinal: 'RM'
	}, { 
		id: 8,
		name: 'Libertador General Bernardo O\'Higgins',
		ordinal: 'VI'
	}, {
		id: 9,
		name: 'Maule',
		ordinal: 'VII'
	}, {
		id: 10,
		name: 'Biobío',
		ordinal: 'VIII'
	}, {
		id: 11,
		name: 'La Araucanía',
		ordinal: 'IX'
	}, {
		id: 12,
		name: 'Los Ríos',
		ordinal: 'XIV'
	}, {
		id: 13,
		name: 'Los Lagos',
		ordinal: 'X'
	}, {
		id: 14,
		name: 'Aisén del General Carlos Ibáñez del Campo',
		ordinal: 'XI'
	}, {
		id: 15,
		name: 'Magallanes y de la Antártica Chilena',
		ordinal: 'XII'
	}
]
regions.each do |r|
	Region.create( id: r[:id], name: r[:name], 	ordinal: r[:ordinal] )
end
# FIN - Inserciones para Region

#Inserciones para Comunas(Township)
Township.destroy_all
townships = [
	{ id: 1, name: 'Arica', region_id: 1},
	{ id: 2, name: 'Camarones', region_id: 1 },
	{ id: 3, name: 'General Lagos', region_id: 1 },
	{
		id: 4, 
		name:'Putre',
		region_id: 1
	},{
	id: 5,
	name: 'Alto Hospicio',
	region_id: 2
	},{
	id: 6,
	name: 'Iquique',
	region_id: 2
	},{
	id: 7, 
	name:'Camiña',
	region_id: 2
	},{
	id: 8,
	name: 'Colchane',
	region_id: 2
	},{
	id: 9,
	name: 'Huara',
	region_id: 2
	},{
	id: 10,
	name: 'Pica',
	region_id: 2
	},{
	id: 11,
	name: 'Pozo Almonte',
	region_id: 2
	},{
	id: 12,
	name: 'Antofagasta',
	region_id: 3
	},{
	id: 13,
	name: 'Mejillones',
	region_id: 3
	},{
	id: 14,
	name: 'Sierra Gorda',
	region_id: 3
	},{
	id: 15,
	name: 'Taltal',
	region_id: 3
	},{
	id: 16,
	name: 'Calama',
	region_id: 3
	},{
	id: 17,
	name: 'Ollague',
	region_id: 3
	},
	{
	id: 18,
	name: 'San Pedro de Atacama',
	region_id: 3
	},{
	id: 19,
	name: 'María Elena',
	region_id: 3
	},{
	id: 20,
	name: 'Tocopilla',
	region_id: 3
	},{
	id: 21,
	name: 'Chañaral',
	region_id: 4
	},{
	id: 22,
	name: 'Diego de Almagro',
	region_id: 4
	},{
	id: 23,
	name: 'Caldera',
	region_id: 4
	},
	{
	id: 24, name: 'Copiapó',region_id: 4},
	{
	id: 25,
	name: 'Tierra Amarilla',region_id: 4},
	{
	id: 26,
	name: 'Alto del Carmen',region_id: 4},
	{
	id: 27,
	name: 'Freirina',region_id: 4},
	{
	id: 28,
	name: 'Huasco',region_id: 4},
	{
	id: 29,
	name: 'Vallenar',region_id: 4},
	{
	id: 30,
	name: 'Canela',region_id: 5},
	{
	id: 31,
	name: 'Illapel',region_id: 5},
	{
	id: 32,
	name: 'Los Vilos',region_id: 5},
	{
	id: 33,
	name: 'Salamanca',region_id: 5},
	{
	id: 34,
	name: 'Andacollo',region_id: 5},
	{
	id: 35,
	name: 'Coquimbo',region_id: 5},
	{
	id: 36,
	name: 'La Higuera',region_id: 5},
	{
	id: 37,
	name: 'La Serena',region_id: 5},
	{
	id: 38,
	name: 'Paihuaco',region_id: 5},
	{
	id: 39,
	name: 'Vicuña',region_id: 5},
	{
	id: 40,
	name: 'Combarbalá',region_id: 5},
	{
	id: 41,
	name: 'Monte Patria',region_id: 5},
	{
	id: 42,
	name: 'Ovalle',region_id: 5},
	{
	id: 43,
	name: 'Punitaqui',region_id: 5},
	{
	id: 44,
	name: 'Río Hurtado',region_id: 5},
	{
	id: 45,
	name: 'Isla de Pascua',region_id: 6},
	{
	id: 46,
	name: 'Calle Larga',region_id: 6},
	{
	id: 47,
	name: 'Los Andes',region_id: 6},
	{
	id: 48,
	name: 'Rinconada',region_id: 6},
	{
	id: 49,
	name: 'San Esteban',region_id: 6},
	{
	id: 50,
	name: 'La Ligua',region_id: 6},
	{
	id: 51,
	name: 'Papudo',region_id: 6},
	{
	id: 52,
	name: 'Petorca',region_id: 6},
	{
	id: 53,
	name: 'Zapallar',region_id: 6},
	{
	id: 54,
	name: 'Hijuelas',region_id: 6},
	{
	id: 55,
	name: 'La Calera',region_id: 6},
	{
	id: 56,
	name: 'La Cruz',region_id: 6},
	{
	id: 57,
	name: 'Limache',region_id: 6},
	{
	id: 58,
	name: 'Nogales',region_id: 6},
	{
	id: 59,
	name: 'Olmué',region_id: 6},
	{
	id: 60,
	name: 'Quillota',region_id: 6},
	{
	id: 61,
	name: 'Algarrobo',region_id: 6},
	{
	id: 62,
	name: 'Cartagena',region_id: 6},
	{
	id: 63,
	name: 'El Quisco',region_id: 6},
	{
	id: 64,
	name: 'El Tabo',region_id: 6},
	{
	id: 65,
	name: 'San Antonio',region_id: 6},
	{
	id: 66,
	name: 'Santo Domingo',region_id: 6},
	{
	id: 67,
	name: 'Catemu',region_id: 6},
	{
	id: 68,
	name: 'Llaillay',region_id: 6},
	{
	id: 69,
	name: 'Panquehue',region_id: 6},
	{
	id: 70,
	name: 'Putaendo',region_id: 6},
	{
	id: 71,
	name: 'San Felipe',region_id: 6},
	{
	id: 72,
	name: 'Santa María',region_id: 6},
	{
	id: 73,
	name: 'Casablanca',region_id: 6},
	{
	id: 74,
	name: 'Concón',region_id: 6},
	{
	id: 75,
	name: 'Juan Fernández',region_id: 6},
	{
	id: 76,
	name: 'Puchuncaví',region_id: 6},
	{
	id: 77,
	name: 'Quilpué',region_id: 6},
	{
	id: 78,
	name: 'Quintero',region_id: 6},
	{
	id: 79,
	name: 'Valparaíso',region_id: 6},
	{
	id: 80,
	name: 'Villa Alemana',region_id: 6},
	{
	id: 81,
	name: 'Viña del Mar',region_id: 6},
	{
	id: 82,
	name: 'Colina',region_id: 7},
	{
	id: 83,
	name: 'Lampa',region_id: 7},
	{
	id: 84,
	name: 'Tiltil',region_id: 7},
	{
	id: 85,
	name: 'Pirque',region_id: 7},
	{
	id: 86,
	name: 'Puente Alto',region_id: 7},
	{
	id: 87,
	name: 'San José de Maipo',region_id: 7},
	{
	id: 88,
	name: 'Buin',region_id: 7},
	{
	id: 89,
	name: 'Calera de Tango',region_id: 7},
	{
	id: 90,
	name: 'Paine',region_id: 7},
	{
	id: 91,
	name: 'San Bernardo',region_id: 7},
	{
	id: 92,
	name: 'Alhué',region_id: 7},
	{
	id: 93,
	name: 'Curacaví',region_id: 7},
	{
	id: 94,
	name: 'María Pinto',region_id: 7},
	{
	id: 95,
	name: 'Melipilla',region_id: 7},
	{
	id: 96,
	name: 'San Pedro',region_id: 7},
	{
	id: 97,
	name: 'Cerrillos',region_id: 7},
	{
	id: 98,
	name: 'Cerro Navia',region_id: 7},
	{
	id: 99,
	name: 'Conchalí',region_id: 7},
	{
	id: 100,
	name: 'El Bosque',region_id: 7},
	{
	id: 101,
	name: 'Estación Central',region_id: 7},
	{
	id: 102,
	name: 'Huechuraba',region_id: 7},
	{
	id: 103,
	name: 'Independencia',region_id: 7},
	{
	id: 104,
	name: 'La Cisterna',region_id: 7},
	{
	id: 105,
	name: 'La Granja',region_id: 7},
	{
	id: 106,
	name: 'La Florida',region_id: 7},
	{
	id: 107,
	name: 'La Pintana',region_id: 7},
	{
	id: 108,
	name: 'La Reina',region_id: 7},
	{
	id: 109,
	name: 'Las Condes',region_id: 7},
	{
	id: 110,
	name: 'Lo Barnechea',region_id: 7},
	{
	id: 111,
	name: 'Lo Espejo',region_id: 7},
	{
	id: 112,
	name: 'Lo Prado',region_id: 7},
	{
	id: 113,
	name: 'Macul',region_id: 7},
	{
	id: 114,
	name: 'Maipú',region_id: 7},
	{
	id: 115,
	name: 'Ñuñoa',region_id: 7},
	{
	id: 116,
	name: 'Pedro Aguirre Cerda',region_id: 7},
	{
	id: 117,
	name: 'Peñalolén',region_id: 7},
	{
	id: 118,
	name: 'Providencia',region_id: 7},
	{
	id: 119,
	name: 'Pudahuel',region_id: 7},
	{
	id: 120,
	name: 'Quilicura',region_id: 7},
	{
	id: 121,
	name: 'Quinta Normal',region_id: 7},
	{
	id: 122,
	name: 'Recoleta',region_id: 7},
	{
	id: 123,
	name: 'Renca',region_id: 7},
	{
	id: 124,
	name: 'San Miguel',region_id: 7},
	{
	id: 125,
	name: 'San Joaquín',region_id: 7},
	{
	id: 126,
	name: 'San Ramón',region_id: 7},
	{
	id: 127,
	name: 'Santiago',region_id: 7},
	{
	id: 128,
	name: 'Vitacura',region_id: 7},
	{
	id: 129,
	name: 'El Monte',region_id: 7},
	{
	id: 130,
	name: 'Isla de Maipo',region_id: 7},
	{
	id: 131,
	name: 'Padre Hurtado',region_id: 7},
	{
	id: 132,
	name: 'Peñaflor',region_id: 7},
	{
	id: 133,
	name: 'Talagante',region_id: 7},
	{
	id: 134,
	name: 'Codegua',region_id: 8},
	{
	id: 135,
	name: 'Coínco',region_id: 8},
	{
	id: 136,
	name: 'Coltauco',region_id: 8},
	{
	id: 137,
	name: 'Doñihue',region_id: 8},
	{
	id: 138,
	name: 'Graneros',region_id: 8},
	{
	id: 139,
	name: 'Las Cabras',region_id: 8},
	{
	id: 140,
	name: 'Machalí',region_id: 8},
	{
	id: 141,
	name: 'Malloa',region_id: 8},
	{
	id: 142,
	name: 'Mostazal',region_id: 8},
	{
	id: 143,
	name: 'Olivar',region_id: 8},
	{
	id: 144,
	name: 'Peumo',region_id: 8},
	{
	id: 145,
	name: 'Pichidegua',region_id: 8},
	{
	id: 146,
	name: 'Quinta de Tilcoco',region_id: 8},
	{
	id: 147,
	name: 'Rancagua',region_id: 8},
	{
	id: 148,
	name: 'Rengo',region_id: 8},
	{
	id: 149,
	name: 'Requínoa',region_id: 8},
	{
	id: 150,
	name: 'San Vicente de Tagua Tagua',region_id: 8},
	{
	id: 151,
	name: 'La Estrella',region_id: 8},
	{
	id: 152,
	name: 'Litueche',region_id: 8},
	{
	id: 153,
	name: 'Marchihue',region_id: 8},
	{
	id: 154,
	name: 'Navidad',region_id: 8},
	{
	id: 155,
	name: 'Peredones',region_id: 8},
	{
	id: 156,
	name: 'Pichilemu',region_id: 8},
	{
	id: 157,
	name: 'Chépica',region_id: 8},
	{
	id: 158,
	name: 'Chimbarongo',region_id: 8},
	{
	id: 159,
	name: 'Lolol',region_id: 8},
	{
	id: 160,
	name: 'Nancagua',region_id: 8},
	{
	id: 161,
	name: 'Palmilla',region_id: 8},
	{
	id: 162,
	name: 'Peralillo',region_id: 8},
	{
	id: 163,
	name: 'Placilla',region_id: 8},
	{
	id: 164,
	name: 'Pumanque',region_id: 8},
	{
	id: 165,
	name: 'San Fernando',region_id: 8},
	{
	id: 166,
	name: 'Santa Cruz',region_id: 8},
	{
	id: 167,
	name: 'Cauquenes',region_id: 9},
	{
	id: 168,
	name: 'Chanco',region_id: 9},
	{
	id: 169,
	name: 'Pelluhue',region_id: 9},
	{
	id: 170,
	name: 'Curicó',region_id: 9},
	{
	id: 171,
	name: 'Hualañé',region_id: 9},
	{
	id: 172,
	name: 'Licantén',region_id: 9},
	{
	id: 173,
	name: 'Molina',region_id: 9},
	{
	id: 174,
	name: 'Rauco',region_id: 9},
	{
	id: 175,
	name: 'Romeral',region_id: 9},
	{
	id: 176,
	name: 'Sagrada Familia',region_id: 9},
	{
	id: 177,
	name: 'Teno',region_id: 9},
	{
	id: 178,
	name: 'Vichuquén',region_id: 9},
	{
	id: 179,
	name: 'Colbún',region_id: 9},
	{
	id: 180,
	name: 'Linares',region_id: 9},
	{
	id: 181,
	name: 'Longaví',region_id: 9},
	{
	id: 182,
	name: 'Parral',region_id: 9},
	{
	id: 183,
	name: 'Retiro',region_id: 9},
	{
	id: 184,
	name: 'San Javier',region_id: 9},
	{
	id: 185,
	name: 'Villa Alegre',region_id: 9},
	{
	id: 186,
	name: 'Yerbas Buenas',region_id: 9},
	{
	id: 187,
	name: 'Constitución',region_id: 9},
	{
	id: 188,
	name: 'Curepto',region_id: 9},
	{
	id: 189,
	name: 'Empedrado',region_id: 9},
	{
	id: 190,
	name: 'Maule',region_id: 9},
	{
	id: 191,
	name: 'Pelarco',region_id: 9},
	{
	id: 192,
	name: 'Pencahue',region_id: 9},
	{
	id: 193,
	name: 'Río Claro',region_id: 9},
	{
	id: 194,
	name: 'San Clemente',region_id: 9},
	{
	id: 195,
	name: 'San Rafael',region_id: 9},
	{
	id: 196,
	name: 'Talca',region_id: 9},
	{
	id: 197,
	name: 'Arauco',region_id: 10},
	{
	id: 198,
	name: 'Cañete',region_id: 10},
	{
	id: 199,
	name: 'Contulmo',region_id: 10},
	{
	id: 200,
	name: 'Curanilahue',region_id: 10},
	{
	id: 201,
	name: 'Lebu',region_id: 10},
	{
	id: 202,
	name: 'Los Álamos',region_id: 10},
	{
	id: 203,
	name: 'Tirúa',region_id: 10},
	{
	id: 204,
	name: 'Alto Biobío',region_id: 10},
	{
	id: 205,
	name: 'Antuco',region_id: 10},
	{
	id: 206,
	name: 'Cabrero',region_id: 10},
	{
	id: 207,
	name: 'Laja',region_id: 10},
	{
	id: 208,
	name: 'Los Ángeles',region_id: 10},
	{
	id: 209,
	name: 'Mulchén',region_id: 10},
	{
	id: 210,
	name: 'Nacimiento',region_id: 10},
	{
	id: 211,
	name: 'Negrete',region_id: 10},
	{
	id: 212,
	name: 'Quilaco',region_id: 10},
	{
	id: 213,
	name: 'Quilleco',region_id: 10},
	{
	id: 214,
	name: 'San Rosendo',region_id: 10},
	{
	id: 215,
	name: 'Santa Bárbara',region_id: 10},
	{
	id: 216,
	name: 'Tucapel',region_id: 10},
	{
	id: 217,
	name: 'Yumbel',region_id: 10},
	{
	id: 218,
	name: 'Chiguayante',region_id: 10},
	{
	id: 219,
	name: 'Concepción',region_id: 10},
	{
	id: 220,
	name: 'Coronel',region_id: 10},
	{
	id: 221,
	name: 'Florida',region_id: 10},
	{
	id: 222,
	name: 'Hualpén',region_id: 10},
	{
	id: 223,
	name: 'Hualqui',region_id: 10},
	{
	id: 224,
	name: 'Lota',region_id: 10},
	{
	id: 225,
	name: 'Penco',region_id: 10},
	{
	id: 226,
	name: 'San Pedro de La Paz',region_id: 10},
	{
	id: 227,
	name: 'Santa Juana',region_id: 10},
	{
	id: 228,
	name: 'Talcahuano',region_id: 10},
	{
	id: 229,
	name: 'Tomé',region_id: 10},
	{
	id: 230,
	name: 'Bulnes',region_id: 10},
	{
	id: 231,
	name: 'Chillán',region_id: 10},
	{
	id: 232,
	name: 'Chillán Viejo',region_id: 10},
	{
	id: 233,
	name: 'Cobquecura',region_id: 10},
	{
	id: 234,
	name: 'Coelemu',region_id: 10},
	{
	id: 235,
	name: 'Coihueco',region_id: 10},
	{
	id: 236,
	name: 'El Carmen',region_id: 10},
	{
	id: 237,
	name: 'Ninhue',region_id: 10},
	{
	id: 238,
	name: 'Ñiquen',region_id: 10},
	{
	id: 239,
	name: 'Pemuco',region_id: 10},
	{
	id: 240,
	name: 'Pinto',region_id: 10},
	{
	id: 241,
	name: 'Portezuelo',region_id: 10},
	{
	id: 242,
	name: 'Quillón',region_id: 10},
	{
	id: 243,
	name: 'Quirihue',region_id: 10},
	{
	id: 244,
	name: 'Ránquil',region_id: 10},
	{
	id: 245,
	name: 'San Carlos',region_id: 10},
	{
	id: 246,
	name: 'San Fabián',region_id: 10},
	{
	id: 247,
	name: 'San Ignacio',region_id: 10},
	{
	id: 248,
	name: 'San Nicolás',region_id: 10},
	{
	id: 249,
	name: 'Treguaco',region_id: 10},
	{
	id: 250,
	name: 'Yungay',region_id: 10},
	{
	id: 251,
	name: 'Carahue',region_id: 11},
	{
	id: 252,
	name: 'Cholchol',region_id: 11},
	{
	id: 253,
	name: 'Cunco',region_id: 11},
	{
	id: 254,
	name: 'Curarrehue',region_id: 11},
	{
	id: 255,
	name: 'Freire',region_id: 11},
	{
	id: 256,
	name: 'Galvarino',region_id: 11},
	{
	id: 257,
	name: 'Gorbea',region_id: 11},
	{
	id: 258,
	name: 'Lautaro',region_id: 11},
	{
	id: 259,
	name: 'Loncoche',region_id: 11},
	{
	id: 260,
	name: 'Melipeuco',region_id: 11},
	{
	id: 261,
	name: 'Nueva Imperial',region_id: 11},
	{
	id: 262,
	name: 'Padre Las Casas',region_id: 11},
	{
	id: 263,
	name: 'Perquenco',region_id: 11},
	{
	id: 264,
	name: 'Pitrufquén',region_id: 11},
	{
	id: 265,
	name: 'Pucón',region_id: 11},
	{
	id: 266,
	name: 'Saavedra',region_id: 11},
	{
	id: 267,
	name: 'Temuco',region_id: 11},
	{
	id: 268,
	name: 'Teodoro Schmidt',region_id: 11},
	{
	id: 269,
	name: 'Toltén',region_id: 11},
	{
	id: 270,
	name: 'Vilcún',region_id: 11},
	{
	id: 271,
	name: 'Villarrica',region_id: 11},
	{
	id: 272,
	name: 'Angol',region_id: 11},
	{
	id: 273,
	name: 'Collipulli',region_id: 11},
	{
	id: 274,
	name: 'Curacautín',region_id: 11},
	{
	id: 275,
	name: 'Ercilla',region_id: 11},
	{
	id: 276,
	name: 'Lonquimay',region_id: 11},
	{
	id: 277,
	name: 'Los Sauces',region_id: 11},
	{
	id: 278,
	name: 'Lumaco',region_id: 11},
	{
	id: 279,
	name: 'Purén',region_id: 11},
	{
	id: 280,
	name: 'Renaico',region_id: 11},
	{
	id: 281,
	name: 'Traiguén',region_id: 11},
	{
	id: 282,
	name: 'Victoria',region_id: 11},
	{
	id: 283,
	name: 'Corral',region_id: 12},
	{
	id: 284,
	name: 'Lanco',region_id: 12},
	{
	id: 285,
	name: 'Los Lagos',region_id: 12},
	{
	id: 286,
	name: 'Máfil',region_id: 12},
	{
	id: 287,
	name: 'Mariquina',region_id: 12},
	{
	id: 288,
	name: 'Paillaco',region_id: 12},
	{
	id: 289,
	name: 'Panguipulli',region_id: 12},
	{
	id: 290,
	name: 'Valdivia',region_id: 12},
	{
	id: 291,
	name: 'Futrono',region_id: 12},
	{
	id: 292,
	name: 'La Unión',region_id: 12},
	{
	id: 293,
	name: 'Lago Ranco',region_id: 12},
	{
	id: 294,
	name: 'Río Bueno',region_id: 12},
	{
	id: 295,
	name: 'Ancud',region_id: 13},
	{
	id: 296,
	name: 'Castro',region_id: 13},
	{
	id: 297,
	name: 'Chonchi',region_id: 13},
	{
	id: 298,
	name: 'Curaco de Vélez',region_id: 13},
	{
	id: 299,
	name: 'Dalcahue',region_id: 13},
	{
	id: 300,
	name: 'Puqueldón',region_id: 13},
	{
	id: 301,
	name: 'Queilén',region_id: 13},
	{
	id: 302,
	name: 'Quemchi',region_id: 13},
	{
	id: 303,
	name: 'Quellón',region_id: 13},
	{
	id: 304,
	name: 'Quinchao',region_id: 13},
	{
	id: 305,
	name: 'Calbuco',region_id: 13},
	{
	id: 306,
	name: 'Cochamó',region_id: 13},
	{
	id: 307,
	name: 'Fresia',region_id: 13},
	{
	id: 308,
	name: 'Frutillar',region_id: 13},
	{
	id: 309,
	name: 'Llanquihue',region_id: 13},
	{
	id: 310,
	name: 'Los Muermos',region_id: 13},
	{
	id: 311,
	name: 'Maullín',region_id: 13},
	{
	id: 312,
	name: 'Puerto Montt',region_id: 13},
	{
	id: 313,
	name: 'Puerto Varas',region_id: 13},
	{
	id: 314,
	name: 'Osorno',region_id: 13},
	{
	id: 315,
	name: 'Puero Octay',region_id: 13},
	{
	id: 316,
	name: 'Purranque',region_id: 13},
	{
	id: 317,
	name: 'Puyehue',region_id: 13},
	{
	id: 318,
	name: 'Río Negro',region_id: 13},
	{
	id: 319,
	name: 'San Juan de la Costa',region_id: 13},
	{
	id: 320,
	name: 'San Pablo',region_id: 13},
	{
	id: 321,
	name: 'Chaitén',region_id: 13},
	{
	id: 322,
	name: 'Futaleufú',region_id: 13},
	{
	id: 323,
	name: 'Hualaihué',region_id: 13},
	{
	id: 324,
	name: 'Palena',region_id: 13},
	{
	id: 325,
	name: 'Aisén',region_id: 14},
	{
	id: 326,
	name: 'Cisnes',region_id: 14},
	{
	id: 327,
	name: 'Guaitecas',region_id: 14},
	{
	id: 328,
	name: 'Cochrane',region_id: 14},
	{
	id: 329,
	name: 'O\'higgins',region_id: 14},
	{
	id: 330,
	name: 'Tortel',region_id: 14},
	{
	id: 331,
	name: 'Coihaique',region_id: 14},
	{
	id: 332,
	name: 'Lago Verde',region_id: 14},
	{
	id: 333,
	name: 'Chile Chico',region_id: 14},
	{
	id: 334,
	name: 'Río Ibáñez',region_id: 14},
	{
	id: 335,
	name: 'Antártica',region_id: 15},
	{
	id: 336,
	name: 'Cabo de Hornos',region_id: 15},
	{
	id: 337,
	name: 'Laguna Blanca',region_id: 15},
	{
	id: 338,
	name: 'Punta Arenas',region_id: 15},
	{
	id: 339,
	name: 'Río Verde',region_id: 15},
	{
	id: 340,
	name: 'San Gregorio',region_id: 15},
	{
	id: 341,
	name: 'Porvenir',region_id: 15},
	{
	id: 342,
	name: 'Primavera',region_id: 15},
	{
	id: 343,
	name: 'Timaukel',region_id: 15},
	{
	id: 344,
	name: 'Natales',region_id: 15},
	{
	id: 345,
	name: 'Torres del Paine',region_id: 15},
	{
	id: 346,
	name: 'Cabildo',region_id: 6
	}

]
townships.each do |t|
	Township.create( id: t[:id], name: t[:name], region_id: t[:region_id] )
end
#Fin de Inserciones 

#Inserciones para Author
Author.destroy_all
authors = [
	{
		name: 'Kōhei Horikoshi',
		description: 'Kōhei Horikoshi (平 越 耕 平 Horikoshi Kōhei, nacido el 20 de noviembre de 1986) es un artista de manga japonés conocido por crear la serie de manga shōnen Ōmagadoki Dōbutsuen, Barrage, y más recientemente My Hero Academia, todos los cuales están serializados en Weekly Shōnen Jump. Horikoshi se graduó en la Universidad de Artes de Nagoya y nació en la Prefectura de Aichi.  Fue asistente de Yasuki Tanaka, creador y autor de las series de manga Hitomi no Catoblepas y Kagijin.

		Las series de manga favoritas de Horikoshi incluyen Naruto, One Piece, Akira, Tekkonkinkreet y Boys on the Run. Horikoshi también es un ávido fanático de los cómics de superhéroes estadounidenses, particularmente Marvel Comics. '
	},{
		name: 'Ukyō Kodachi',
		description: 'Ukyō Kodachi (小太刀右京, Kodachi Ukyō) es el encargado de escribir el manga mensual Boruto: Naruto Next Generations, el cual es ilustrado por Mikio Ikemoto y supervisado por Masashi Kishimoto, el creador de la serie. Kodachi también escribió la novela de la Gaara Hiden: Un Espejismo de Tormenta de Arena, la adaptación de la novela ligera de Boruto: Naruto la Película, además colaboró con Kishimoto para escribir el guión de dicha película. '
	},{
		name: 'Mikio Ikemoto',
		description: 'Mikio Ikemoto (池本幹雄, Ikemoto Mikio) era el tercer asistente de Masashi Kishimoto durante los quince años de trabajo del manga de Naruto. Durante un spotlight de asistentes incluido en el Volumen 6 del manga, Kishimoto declaró que Ikemoto trabajaba muy bien.

		En una entrevista publicada en 2016 en la Weekly Shōnen Jump, Kishimoto reveló que Ikemoto había contribuido al diseño de personajes de la serie, notablemente diseñando muchos de los personajes de fondo así como a Zabuza Momochi, Haku y el atuendo de batalla de Hiruzen Sarutobi. Cabe señalar que Ikemoto se encarga de ilustrar el manga mensual Boruto: Naruto Next Generations, siendo escrito por Ukyō Kodachi y supervisado por Kishimoto. '
	},{
		name: 'Yūki Tabata',
		description: 'En 2011, Tabata ingresó en la Golden Future Cup, que le permitió publicar una oportunidad única en la revista Weekly Shōnen Jump como parte de una competencia. Publicó un one-shot llamado Hungry Joker y logró ganar la competencia antes mencionada. Esto dio lugar a que su versión de un solo golpe fuera considerada para ser serializada por la revista. La serialización de Hungry Joker comenzó en noviembre de 2012 en la edición No 50 de la revista. La serie recibió varias críticas debido a la gran partida que la serie había tomado del original de un solo disparo. Debido a esto, Hungry Joker no logró popularidad y fue cancelado después de 24 capítulos en mayo de 2013 en el No 24 de la revista.

		Un año después, Tabata publicó un nuevo one-shot en el 2do Número de 2014 de la revista Jump NEXT, llamado Black Clover. El one-shot fue considerado una vez más para la serialización de Weekly Shōnen Jump y comenzó la serialización en febrero de 2015 en el No 12 de la revista. Para su segunda serialización, Tabata decidió tomar una inspiración mucho más cercana del original de una oportunidad donde el diseño de los personajes principales y las personalidades, junto con los ajustes fundamentales, se llevaron a cabo en la serie. A partir del 12 de mayo de 2018, la serie ha publicado 183 capítulos y todavía está en curso. '
	},{
		name: 'Naotaka Hayashi',
		description: ''
	},{
		name: 'Atsushi Nishigori',
		description: ''
	},{
		name: 'Eiichirō Oda',
		description: '尾田栄一郎 Oda Eiichirō es un mangaka nacido el 1 de enero de 1975 en la prefectura de Kumamoto. Conocido por su serie de manga One Piece (1997-presente) cuya obra es la más vendida de todos los tiempos con más de 450 millones de copias en circulación en todo el mundo y la única en la historia en conseguir un récord Guinness al ser el manga más vendido de todos los tiempos. '
	},{
	name: 'Kōsuke Hamada',
	description: ''
	},{
	name: 'Akira Toriyama',
	description: '鳥山 明 Toriyama Akira, Nagoya, 5 de abril de 1955) es un mangaka y diseñador artístico japonés. Es conocido mundialmente por sus obras Dr. Slump y Dragon Ball, y por el diseño de personajes de las franquicias Dragon Quest, Chrono Trigger y Blue Dragon. '
	},{
	name: 'Chikara Sakuma',
	description: ''
	},{
		name: 'Masashi Kishimoto',
		description: '岸本斉史 Kishimoto Masashi (Nagi, 8 de noviembre de 1974)1​ es un popular dibujante de manga conocido por ser el autor de la serie Naruto, comenzada en 1999, dibujando únicamente el manga de esta serie. Es el hermano gemelo mayor de Seishi Kishimoto. '
	},{
	name: 'Haruichi Furudate',
	description: ''
	},{
	name: 'One',
	description: ''
	},{
	name: 'Yusuke Murata',
	description: ''
	},{
	name: 'Nakaba Suzuki',
	description: ''
	},{
	name: 'Albert Monteys',
	description: ''
	},{
	name: 'Isaac Sánchez',
	description: ''
	},{
	name: 'Fernando de Peña',
	description: ''
	},
	{ name: 'George Abe' },
	{ name: 'abec' },
	{ name: 'Abi Umeda' },
	{ name: 'Adachitoka ' },
	{ name: 'Anónimo' },
]
authors.each do |a|
	Author.create(
	id: a[:id],
	name: a[:name],
	description: a[:description]
	)
end
# FIN - Inserciones para Author

# Inserciones para Category
Category.destroy_all
categories = [
	{ 
		name: 'Revista',
		description: '',
	},{
		name: 'Manga',
		description: 'Manga (漫画 o まんが) es la palabra japonesa para designar las historietas en general. Fuera de Japón se utiliza tanto para referirse a las historietas de origen japonés como al estilo de dibujo utilizado en estas. '
	},{
		name: 'Libro',
		description: ''
	},{
		name: 'Comic',
		description: ''
	},{
		name: 'Shounen',
		description: ''
	},{
		name: 'Mecha',
		description: ''
	},{
		name: 'Shoujo',
		description: ''
	},{
		name: 'Gore',
		description: ''
	},{
		name: 'DC',
		description: ''
	},{
		name: 'Marvel',
		description: ''
	},{
		name: 'Informatica',
		description: ''
	},{
		name: 'Seinen',
		description: ''
	},{
		name: 'Josei',
		description: ''
	},{
		name: 'Thriller',
		description: ''
	},{
		name: 'Horror',
		description: ''
	},{
		name: 'Romance',
		description: ''
	},{
		name: 'Deporte',
		description: ''
	},{
		name: 'Supervivencia',
		description: ''
	},{
		name: 'Reencarnación',
		description: ''
	},{
		name: 'Apocalíptico',
		description: ''
	},{
		name: 'Tragedia',
		description: ''
	},{
		name: 'Vida Escolar',
		description: ''
	},{
		name: 'Historia',
		description: ''
	},{
		name: 'Militar',
		description: ''
	},{
		name: 'Policiaco',
		description: ''
	},{
		name: 'Crimen',
		description: ''
	},{
		name: 'Superpoderes',
		description: ''
	},{
		name: 'Artes Marciales',
		description: ''
	},{
		name: 'Samurái',
		description: ''
	},{
		name: 'Realidad Virtual',
		description: ''
	},{
		name: 'Ciberpunk',
		description: ''
	},{
		name: 'Música',
		description: ''
	},{
		name: 'Familia',
		description: ''
	},{
		name: 'Realidad',
		description: ''
	},{
		name: 'Guerra',
		description: ''
	},{
		name: 'Ciencia Ficción',
		description: ''
	},{
		name: 'Fantasía',
		description: ''
	},{
		name: 'Aventura',
		description: ''
	},{
		name: 'Sobrenatural',
		description: ''
	},{
		name: 'Paranormal',
		description: ''
	},{
		name: 'Noir',
		description: ''
	},{
		name: 'Detectivesca',
		description: ''
	},{
		name: 'Bélico',
		description: ''
	},{
		name: 'Historico',
		description: ''
	},{
		name: 'DC',
		description: ''
	},{
		name: 'Marvel',
		description: ''
	},{
		name: 'Indie',
		description: ''
	}
]
categories.each do |c|
	Category.create( name: c[:name], description: c[:description] )
end
# Fin - Inserciones para Category

Brand.destroy_all
categories = [
	{ 
		name: 'Revista',
		description: '',
	},{
		name: 'Manga',
		description: 'Manga (漫画 o まんが) es la palabra japonesa para designar las historietas en general. Fuera de Japón se utiliza tanto para referirse a las historietas de origen japonés como al estilo de dibujo utilizado en estas. '
	}
]

#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?



#Usuarios
	#Usuario de prueba
		#Usuario vendedor
		User.create(
			email: 'vendor@suana.cl',
			password: '20.suana.19', 
			password_confirmation: '20.suana.19', 
			name: 'Vendedor Uno', 
			rut: '11.111.111-1', 
			role: 'vendor', 
			phone_number: '+56 999 999 999', 
			phone_type: "celular" 
		)



		#Usuario administrador
		AdminUser.create(
			email: 'admin@suana.cl', 
			password: 'password', 
			password_confirmation: 'password'
		) 
	# Fin - Usuario de prueba
# FIN - Usuarios