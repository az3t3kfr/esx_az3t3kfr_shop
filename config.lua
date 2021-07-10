Config 				={}
Config.Locale 		="fr"
Config.DrawDistance = 100

Config.Default={
	Blip	={
		Blip	=1,
		Scale 	=0.9
		Color	=0
	},
	Marker	={
		Size	={ 1.5, 1.5, 1.5 },
		Color 	={ 0, 128, 255 }
	}
}

Config.Map = {
	Pubs ={
		{
			name    ="Tequil-La La",
			color   =27,
			id      =93,
			x       =-565.906,
			y		=276.093,
			z		=100.176
		},
		{
			name	="Bahamas",
			color	=27,
			id		=93,
			x		=-1388.409,
			y		=-585.624,
			z		=100.319
		},
		{
			name	="Stripclub",
			color	=27,
			id		=121,
			x		=132.17,
			y		=-1304.42,
			z=100.319
		},
		{
			name = "Yellow Jack",
			color = 27,
			id = 93,
			x = 1992.69,
			y = 3058.57,
			z = 100.319
		},
		{
			name = "Galaxy",
			color = 27,
			id = 93,
			x = 5.00,
			y = 220.24,
			z = 107.72
		},
	},
	Nightclubs ={
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = 373.875,
			y = 325.896,
			z = 100.319
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = 2557.458,
			y = 382.282,
			z = 100.319
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = -361.9664,
			y = -133.3378,
			z = 37.7686
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = -3038.939,
			y = 585.954,
			z = 6.908
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = -3241.927,
			y = 1001.462,
			z = 11.830
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = 547.431,
			y = 2671.710,
			z = 41.156
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = 1961.464,
			y = 3740.672,
			z = 31.343
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = 2678.916,
			y = 3280.671,
			z = 54.241
		}
	},
	Roberry ={
		{
			x = 1208.327,
			y = -3113.468,
			z = 4.540
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = 1135.808,
			y = -982.281,
			z = 45.415
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = -1222.915,
			y = -906.983,
			z = 11.326
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = -1487.553,
			y = -379.107,
			z = 39.163
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = -2968.243,
			y = 390.910,
			z = 14.043
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = 1166.024,
			y = 2708.930,
			z = 37.157
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = 1392.562,
			y = 3604.648,
			z = 33.980
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = -48.519,
			y = -1757.514,
			z = 28.421
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = 1163.373,
			y = -323.801,
			z = 68.205
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = -707.501,
			y = -914.260,
			z = 18.215
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = -1820.523,
			y = 792.518,
			z = 137.118
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = 1698.388,
			y = 4924.404,
			z = 41.063
		},
		{
			name = "Magasin",
			color = 3,
			id = 78,
			x = 1698.388,
			y = 4924.404,
			z = 41.063
		},
	}
}

Config.Zones = {
	TwentyFourSeven = {
		Name 	="24/7",
		Blip	={
			Type	=52,
			Color	=2
		}
		Items = {
			"phone",
			"gps"
		},
		Pos = {
			vector3(1208.327	,-3113.468	,4.540)
		}
	},
	RobsLiquor = {
		Name ="Robs Liquor",
		Type	=52,
		Color	=6,
		Items = {
			"bread",
			"chocolate",
			"hamburge",
			"cupcake",
			"water",
			"cocacola",
			"icetea",
			"coffe",
			"milk",
			"cigarett",
			"lighter",
			"phone",
			"jumelles"
		},
		Pos = {
			vector3(1135.808	,-982.281	,45.415),
			vector3(-1222.915	,-906.983	,11.326),
			vector3(-1487.553	,-379.107	,39.163),
			vector3(-2968.243	,390.910	,14.043),
			vector3(1166.024	,2708.930	,37.157),
			vector3(1392.562	,3604.684	,33.980),
			vector3(-48.519		,-1757.514	,28.421),
			vector3(1163.373	,-323.801	,68.205),
			vector3(-707.501	,-914.260	,18.215),
			vector3(-1820.523	,792.518	,137.118),
			vector3(1698.388	,4924.404	,41.063),
			vector3(373.875		,325.896	,102.566),
			vector3(2557.458	,382.282	,107.622),
			vector3(-3038.939	,585.954	,6.908),
			vector3(-361.9664	,-133.3378	,37.7686),
			vector3(-3241.927	,1001.462	,11.830),
			vector3(547.431		,2671.710	,41.156),
			vector3(1961.464	,3740.672	,31.343),
			vector3(2678.916	,3280.671	,54.241,
			vector3(256.5691	,-782.5762	,29.5322),
			vector3(1729.216	,6414.131	,34.037),
		}
	},
	LTDgasoline = {
		Name ="LTD Gasoline",
		Type	=52,
		Color	=29,
		Items = {
			"phone",
			"gps"
		},
		Pos = {
			vector3(-27.0499, -1675.7020, 28.5099)
		}
	},

		Stores ={
		{
			name = "Informatique",
			color = 50,
			id = 459,
			x = -27.0499,
			y = -1675.7020,
			z = 28.5099
		}
	}
	Bar = {
		Items = {
			"beer",
			"wine",
			"vodka",
			"tequila",
			"whisky",
			"cigarett",
			"lighter"
		},
		Pos = {
			vector3(127.830, -1284.796, 28.280),
			vector3(-1393.409, -606.624, 29.319),
			vector3(-559.906, 287.093, 81.176),
			vector3(1986.18, 3054.31, 46.32)
		}
	},

	Disco = {
		Items = {
			"beer",
			"wine",
			"vodka",
			"tequila",
			"whisky",
			"cigarett",
			"lighter"
		},
		Pos = {
			vector3(-1586.922	,-3012.860	,-77.004),
			vector3(-1578.204	,-3014.460	,-80.005)
		}
	}
}