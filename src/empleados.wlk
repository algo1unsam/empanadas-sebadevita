
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.

//RESPUESTAS//

//1 -si cambiaramos el codigo, no funcionaria porque el method 
// cobrarSueldo() no existe en los objetos de los empleados
//2 - Baigorria no entenderia el mensaje cobrarSueldo()
// 3 - Hay que agregar el metodo cobrarSueldo() en los objetos de los empleados										


object gimenez {
var property sueldo = 15000
var totalcobrado= 0


	method sueldo() { 
		return 15000
	}
	method sueldo(nuevoValor) { 
		sueldo = nuevoValor
	}
	
	method cobrarSueldo(){
		
		sueldo= sueldo + 15000
		totalcobrado= totalcobrado + 15000  
	}
	
	method totalCobrado(){
		return totalcobrado
		}
}



object baigorria {
	var cantidadEmpanadasVendidas = 1000
	var montoPorEmpanada = 15
	
	var dinero=0
	var deuda=0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo(){
		dinero= self.sueldo() + dinero 
		self.pagarDeuda()
	}
	
	method gastar(cuanto){
		deuda+= cuanto
		
	}
	
	method totalDeuda(){
		return deuda
		
		}
		
	method totalDinero(){
		return dinero
		
	}
	
	method meAlcanza(){
		
		return dinero > deuda   // 1 cuando sobra, 0 cuando falta 
		
	}	
	
	method pagarDeuda(){
		
				
		if (self.meAlcanza()){
			dinero=dinero-deuda
			deuda=0 	
		} else {
			
			deuda= deuda - dinero
			dinero=0
			
		}
			
	}
		
	
	
	
		
	}
	
	
	
	


object galvan {
	var dinero = 300000
	method dinero() { 
		return dinero
	}

	method pagarA( empleado ) { 				
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
