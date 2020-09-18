class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.map do |pb|
            if pb.backer == self
                pb.project
            end
        end.compact
    end

end
