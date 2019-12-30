local blips = {
	--CORREOS
    { name = 'Oficina de Correos', sprite = 1861010125, x = -178.98, y = 626.72, z = 114.09 },
	{ name = 'Oficina de Correos', sprite = 1861010125, x = -875.13, y = -1328.76, z = 43.96 },
	--DOCTOR
	{ name = 'Doctor', sprite = -1739686743, x = -288.0, y = 804.56, z = 119.39 },
	--SALOON
	{ name = 'Saloon', sprite = 1879260108, x = -311.67, y = 806.43, z = 118.98 },
	{ name = 'Saloon', sprite = 1879260108, x = -817.69, y = -1318.75, z = 43.68 },
	--BANCOS
	{ name = 'Banco', sprite = -2128054417, x = -308.52, y = 775.99, z = 118.7 },
	{ name = 'Banco', sprite = -2128054417, x = -813.09, y = -1277.52, z = 43.64 },
	--TIENDAS
	{ name = 'Tienda general', sprite = 1475879922, x = -324.1, y = 803.48, z = 117.88 },
	{ name = 'Tienda general', sprite = 1475879922, x = -785.26, y = -1322.14, z = 43.88 },
	--HOTELES
	{ name = 'Motel', sprite = -211556852, x = -325.74, y = 772.92, z = 117.44 },
	--SHERIFF
	{ name = 'Oficina del sheriff', sprite = 1322310532, x = -277.76, y = 804.97, z = 119.38 },
	{ name = 'Oficina del sheriff', sprite = 1322310532, x = -764.14, y = -1270.92, z = 44.04 },
	--BARBERO
	{ name = 'Barbero', sprite = -2090472724, x = -815.85, y = -1364.77, z = 43.75 },
	--FOTOS
	{ name = 'Estudio de fotografía', sprite = 1364029453, x = -814.54, y = -1374.74, z = 44.23 },
	--ROPAS
	{ name = 'Tienda de ropa', sprite = 1195729388, x = -761.81, y = -1293.64, z = 43.84 }
}

Citizen.CreateThread(function()
	for _, info in pairs(blips) do
        local blip = N_0x554d9d53f696d002(1664425300, info.x, info.y, info.z)
        SetBlipSprite(blip, info.sprite, 1)
		SetBlipScale(blip, 0.2)
		Citizen.InvokeNative(0x9CB1A1623062F402, blip, info.name)
    end  
end)