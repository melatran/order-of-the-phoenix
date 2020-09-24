class Member
  attr_reader :name, :role, :house, :patronous

  def initialize(attributes)
    @name = attributes[:name]
    @role = attributes[:role].present? ? attributes[:role] : "Unknown"
    @house = attributes[:house]
    @patronous = attributes[:patronous].present? ? attributes[:patronous] : "Unknown"
  end
end
