class Backer
  
  attr_accessor :backed_projects, :name
  
  
  
  def initialize(name)
    @backed_projects = []
    @name = name
  end
  
  def back_project(project)
  
   if !@backed_projects.include?(project)
    @backed_projects << project
    project.add_backer(self)
   end
  end
  
  
end