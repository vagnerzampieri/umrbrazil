<%- if namespace_name -%>
module <%= module_name %>
<%- end -%>
class <%= class_name %> < ActiveRecord::Base
  #attr_accessible :<%#= model_attributes.join(', :') %>
end
<%- if namespace_name -%>
end
<%- end -%>
