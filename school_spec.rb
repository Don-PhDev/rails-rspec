class School 
  attr_reader :name, :students

  def initialize(name, students)
    @name = name
    @students = []
  end
end

RSpec.describe School do
  it 'has a name' do
    school = School.new('Central School', [])
    expect(school.name).to eq('Central School')
  end

  it 'should start with no students' do
    school = School.new('Central School', [])
    expect(school.students).to eq([])
  end
end
