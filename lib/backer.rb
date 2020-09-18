class Backer

    attr_accessor 
    attr_reader :name
    attr_writer
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = ProjectBacker.all.find_all { |project| project.backer == self }
        projects.each_with_object ([]) { |project_backer_instances, arr| arr << project_backer_instances.project }
    end
end

