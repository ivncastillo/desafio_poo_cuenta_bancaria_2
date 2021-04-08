class CuentaBancaria
    attr_accessor :banco, :numero_de_cuenta, :saldo

    def initialize(banco, cuenta, saldo=0)
        @banco = banco
        @numero_de_cuenta = cuenta
        @saldo = saldo
    end

    def transferir(monto, cuenta_2)
        @saldo -= monto
        cuenta_2.saldo += monto
    end 
end


class Usuario
    attr_accessor :nombre, :cuentas_bancarias, :saldo_total

    def initialize(nombre, cuentas_bancarias, saldo_total=0)
        @nombre = nombre
        @cuentas_bancarias=[]
        @cuentas_bancarias.push cuentas_bancarias
    end

    def saldo_total (nombre_cuenta)
        saldo1 =nombre_cuenta.saldo
        @saldo_total += saldo1
    end
end

cuenta1=CuentaBancaria.new('bci', '1-0', 5000)
cuenta2=CuentaBancaria.new('bbva', '2-0', 5000)

cuenta1.transferir(5000, cuenta2)

puts cuenta1.saldo
puts cuenta2.saldo

persona1=Usuario.new('ivan', '2-0')
#puts persona1.saldo_total (cuenta2)