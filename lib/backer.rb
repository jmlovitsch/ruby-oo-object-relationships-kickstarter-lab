class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projects
        ProjectBacker.all.select do |element|
            element.backer == self
        end
    end


    def backed_projects
        self.projects.map do |element|
            element.project
        end
    end


end
