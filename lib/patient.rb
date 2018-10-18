
class Patient

  attr_reader :name, :appointment, :doctor

  def initialize(name)
  @name = name
end

def new_appointment(doctor, date)
   Appointment.new( self, doctor, date)
   #self.appointments.last
end

 def appointment
   Appointment.all.map do |appointment|
   appointment.patient == self
   end
end
end
