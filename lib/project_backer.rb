class ProjectBacker
    @@all = Array.new
    attr_accessor :project, :backer
    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

    def self.all
        @@all
    end
end