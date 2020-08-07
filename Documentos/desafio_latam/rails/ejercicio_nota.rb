class Alumno
    def initilize(notas)
        @notas=notas
    end
end
    def promedio
        @notas.sum / @notas.count  

    end
    notas_posibles = [1,2,3,4,5,6,7]
    array =[]
    40.times do
        notas_alumno =[]
        4.times do
            notas_alumno.push notas_posibles.sample
        end
    end
        array.push Alumno.new(notas_alumno)
        

print array