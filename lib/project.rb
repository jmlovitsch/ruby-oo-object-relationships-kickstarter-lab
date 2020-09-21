class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end


    def backer
        ProjectBacker.all.select do |element|
            element.project == self
        end
    end


    def backers
        self.backer.map do |element|
            element.backer
        end
    end


end
