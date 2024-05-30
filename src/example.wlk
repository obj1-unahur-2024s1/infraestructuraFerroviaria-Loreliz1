class VagonPasajeros{
	var property largo
	var property ancho
	var property tieneBanios
	var property estaOrdenado
	
	method cantidadPasajeros(){
		const multiplicador = if (ancho <= 3) 8 else 10
		var  cantidad = multiplicador * largo
		if (not estaOrdenado)  cantidad = cantidad - 15
		return cantidad
		}
		
	method cantidadMaxCarga()	{return if ( tieneBanios)300 else 800}
	
	method pesoMax(){
		return 2000 + 80 * self.cantidadPasajeros() + self.cantidadMaxCarga()
	}
	
	method recibirMantenimiento() { estaOrdenado = true }
	method vagonDePasajeros(){ return self.cantidadPasajeros() > 0}
	}
	
class VagonCarga {
	const cargaIdeal
	var maderasSueltas
	
	method tieneBanios() = false
	method cantidadPasajeros()=0
	method cantidadMaxCarga(){return cargaIdeal - maderasSueltas*400}
	method pesoMax(){return 1500 + self.cantidadMaxCarga()}
	method recibirMantenimiento() { 0.max (maderasSueltas = maderasSueltas -2) }
	method vagonDePasajeros(){ return self.cantidadPasajeros() > 0}
}

class VagonDormitorio{
	const  compartimentos
	var  camas
	
	
	method tieneBanios() = true
	method cantidadPasajeros()= compartimentos * camas
	method cantidadMaxCarga()= 1200
	method pesoMax()= 4000 + 80 * self.cantidadPasajeros() + + self.cantidadMaxCarga()
	method recibirMantenimiento() {  }
	method vagonDePasajeros(){ return self.cantidadPasajeros() > 0}
}
