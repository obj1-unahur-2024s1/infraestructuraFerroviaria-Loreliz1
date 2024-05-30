import vagones.*

class Formacion {
	const property vagones = []
	
	method pasajerosPorFormacion( ){vagones.sum({v => v.cantidadPasajeros() })}
	method vagonesPopulares(){ vagones.count({ v => v.cantidadPasajeros() >50})}
	//method vagonesPopulares(){ vagones.filter({ v => v.cantidadPasajeros() >50}). size()}
	// method esPopular() = cantidadPasajeros() >50
	method formacionCarguera() { vagones.all ({ v => v.cantidadMaxCarga() >= 1000 })}
	method vagonMasPesado()  {return  vagones.max({v => v.pesoMax()})}
	method vagonMasLiviano() {return vagones.min({v => v.pesoMax()})}
	method dispersionDePeso(){ return self.vagonMasPesado().pesoMax() - self.vagonMasLiviano().pesoMax() }
	method cantidadBanios() { vagones.count({ v => v.tieneBanios()})}
	
}
