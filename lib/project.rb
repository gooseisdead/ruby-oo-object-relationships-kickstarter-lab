class Project
  attr_reader :title
  attr_accessor :backer
  @@all = []

def initialize(title)
  @title = title
  @@all << self
end

def add_backer(backer)
  ProjectBacker.new(self, backer)
end

def self.all
  @@all
end

def backers
  projects = ProjectBacker.all.select { |element| element.project == self }
  projects.each_with_object ([]) { |pb, arr| arr << pb.backer }
end

end
