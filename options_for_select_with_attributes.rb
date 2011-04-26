module ApplicationHelper
  def options_for_select_with_attributes(collection, value, label, attributes, selected=nil)
    collection.collect do |object|
      html = {}
      option = [object.send(label), object.send(value)]
      attributes.each { |attribute, method| html[attribute] = object.send(method) }
      html[:selected] = "selected" if (selected == object) || (selected == value)
      option << html
    end
  end
end
