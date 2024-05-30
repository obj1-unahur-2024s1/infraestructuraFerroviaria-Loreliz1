import vagones.*

class Formacion {
	const property vagones = []
	
	method pasajerosPorFormacion( ){vagones.sum({v => v.cantidadPasajeros() })}
	method vagonesPopulares(){ vagones.count({ v => v.cantidadPasajeros() >50})}
	//method vagonesPopulares(){ vagones.filter({ v => v.cantidadPasajeros() >50}). size()}
	// method esPopular() = cantidadPasajeros() >50
	method forhomacionCarguera() { vagones.all ({ v => v.cantidadMaxCarga() >= 1000 })}
	method vagonMasPesado()  {return  vagones.max({v => v.pesoMax()})}
	method vagonMasLiviano() {return vagones.min({v => v.pesoMax()})}
	method dispersionDePeso(){ return self.vagonMasPesado().pesoMax() - self.vagonMasLiviano().pesoMax() }
	method cantidadBanios() { vagones.count({ v => v.tieneBanios()})}
	method hacerMantenimiento(){ vagones.forEach( {  v=> v.recibirMantenimiento()})}
	method vagonConMasPasajeros() { return vagones.max ({v=> v.cantidadPasajeros() })}
	method vagonConMenosPasajeros() { return vagones.min ({v=> v.cantidadPasajeros() })}
	method estaEquilibrado(){ 
		return (self.vagonConMasPasajeros().cantidadPasajeros() - self.vagonConMenosPasajeros().cantidadPasajeros()) <=20
	}
	method estaOrganizado(){
		return not ( 1..vagones.size()-1).any ({ i => not vagones.get(i-1).vagonDePasajeros() and vagones.get(i)).vagonDePasajeros()})
	}
}

