class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.map do |pb|
            if pb.project == self
                pb.backer
            end
        end.compact
    end
end