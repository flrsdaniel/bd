SELECT 
	b.* 
FROM
	`sss_usuarios` b, `sss_nivel` c
WHERE b.usu_nivel = id_nivel
