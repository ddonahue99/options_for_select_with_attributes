def options_for_select_with_classes(collection, value, label, cssclass)
  collection.collect do |object|
    option = [object.send(label), object.send(value)]
    option << { :class => object.send(cssclass) } if object.send(cssclass).present?
    option
  end
end
