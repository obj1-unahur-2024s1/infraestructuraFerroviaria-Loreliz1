import vagones.*

class Formacion {
	const property vagones = []
	
	method pasajerosPorFormacion( ){vagones.sum({v => v.cantidadPasajeros() })}
	method vagonesPopulares(){ vagones.count({ v => v.cantidadPasajeros() >50})}
	//method vagonesPopulares(){ vagones.filter({ v => v.cantidadPasajeros() >50}). size()}
	// method esPopular() = cantidadPasajeros() >50
	method formacionCarguera() { vagones.all ({ v => v.cantidadMaxCarga() >= 1000 })}
	method dispersionDelPeso(){  return
		(vagones.max({v => v.pesoMax()}) -
		(vagones.min({v => v.pesoMax()}) 
	}
	method cantidadBanios() { vagones.sum({ v => v.tieneBanios() }}
	)
}
