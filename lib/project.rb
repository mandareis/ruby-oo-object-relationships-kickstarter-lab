class Project
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    pjb = ProjectBacker.all.select do |backer|
      backer.project == self
    end
    pjb.map do |pjb|
      pjb.backer
    end
  end
end
