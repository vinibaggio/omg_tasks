module Users::TaskListsHelper
  def add_task_link(form_builder)
    link_to_function 'add a task (no, go play videogames!)' do |page|
      form_builder.fields_for :tasks, Task.new, :child_index => 'NEW_RECORD' do |f|
        html = render(:partial => 'task', :locals => { :form => f })
        page << "$('tasks').insert({ bottom: '#{escape_javascript(html)}'.replace(/NEW_RECORD/g, new Date().getTime()) });"
      end
    end
  end
end