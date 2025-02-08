/*
3. Cree una clase Empleado que contenga las propiedades nombre, puesto y salario. Luego cree
una lista de “empleados” y una función que calcule el salario total de todos los empleados y otra
que calcule el salario promedio.
*/
class Empleado {
  final String nombre;
  final String puesto;
  final double salario;
  Empleado(this.nombre, this.puesto, this.salario);
}

void main() {
  final List<Empleado> empleados = [
    Empleado('Carlos', 'Desarrollador', 3000),
    Empleado('Ana', 'Contadora', 2500),
    Empleado('Josue', 'Gerente', 4000),
  ];

  final double salarioTotal = calcularSalarioTotal(empleados);
  final double salarioPromedio = calcularSalarioPromedio(empleados);

  print('Salario Total: $salarioTotal');
  print('Salario Promedio: $salarioPromedio');
}

double calcularSalarioTotal(List<Empleado> empleados) {
  return empleados.fold(0, (sum, empleado) => sum + empleado.salario);
}

double calcularSalarioPromedio(List<Empleado> empleados) {
  return calcularSalarioTotal(empleados) / empleados.length;
}
