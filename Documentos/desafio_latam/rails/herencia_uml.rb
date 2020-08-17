class Appointment
    attr_accessor :location, :purpuse, :hour, :min
    def initialize (location, purpuse, hour, min)
        @location=location
        @purpuse=purpuse
        @hour=hour
        @min=min
    end
end

class Month1yAppointment<Appointment
    attr_accessor :day
    def initialize (location, purpuse, hour, min, day)
        super(location, purpuse, hour, min)
        @day=day
    end

    def occurs_on?(day)
        @day=day
    end
    def to_s()
        puts "reunion mensual en #{location} sobre #{purpuse} el dia #{day} a las #{hour}:#{min}"
    end

    class DailyAppointment<Appointment
        def to_s()
        puts "reunion mensual en #{location} sobre #{purpuse} a las #{hour}:#{min}"
        end
    end
    
    def occurs_on?(hour,min)
        @hour ==hour && @min ==min
    end

end 


puts Month1yAppointment.new('nasa', 'Aliens', 8, 15, 23).to_s
