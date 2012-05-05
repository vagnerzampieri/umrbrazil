<%- if namespace_name -%>
module <%= module_name %>
<%- end -%>
class <%= class_name %> < ActiveRecord::Base
  attr_accessible :<%= model_attributes_names %>
end
<%- if namespace_name -%>
end
<%- end -%>
