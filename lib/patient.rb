require 'pry'

class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
<<<<<<< HEAD
    # binding.pry
    Appointment.new(self, date, doctor)
=======
    Appointment.new(self, doctor, date)
>>>>>>> 45461f6d9ba9c57f0c2c3affc3fb38677e9e634d
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    self.appointments.map {|appointment| appointment.doctor}
    # binding.pry
  end
  
end