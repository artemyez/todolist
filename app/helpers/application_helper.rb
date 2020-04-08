module ApplicationHelper
  def strike_link(d)
    link_to d.title, complete_task_path(d), method: :patch
  end
end
