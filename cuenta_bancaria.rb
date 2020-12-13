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
    attr_accessor :nombre, :cuentas_bancarias

    def initialize(nombre, cuentas_bancarias)
        @nombre = nombre
        @cuentas_bancarias=[]
        @cuentas_bancarias.push cuentas_bancarias
    end

    def saldo_total(cuentas_bancarias)

        @saldo_total += cuentas_bancarias.saldo

    end
end


