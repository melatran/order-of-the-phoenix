class Member
  attr_reader :name, :role, :house, :patronus

  def initialize(attributes)
    @name = attributes[:name]
    @role = attributes[:role].present? ? attributes[:role] : "Unknown"
    @house = attributes[:house]
    @patronus = attributes[:patronus].present? ? attributes[:patronus] : "Unknown"
  end
end
