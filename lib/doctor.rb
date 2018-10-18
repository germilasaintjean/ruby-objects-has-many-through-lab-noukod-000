class Doctor

  attr_reader :name, :appointment, :patient

@@all_doctors = []

  def initialize(name)
    @name = name
   @@all_doctors << self
end

  def self.all
   @@all_doctors
  end

def new_appointment (date, patient)
Appointment.new(date, self, patient)
#self.appointments.last
end

def appointments
  appointment.all.select do |appointment|
    #appointment.doctor == self
    end
end

 def patients
  appointments.map do |appointment|
   appointment.patients
   end
 end
end
