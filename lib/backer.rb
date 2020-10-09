class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    pbs = ProjectBacker.all.select do |project|
      project.backer == self
    end
    pbs.map do |pb|
      pb.project
    end
  end
end
