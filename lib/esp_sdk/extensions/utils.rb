module Utils
  module_function

  def singularize(name)
    return if name.nil?
    # This is a total hack that will only work with ESP resources. Don't use
    # this for anything else.
    return name unless name[-1] == 's'
    return name[0...-1]
  end

  def underscore_to_titlecase(value)
    return if value.nil?
    value.split("_").map{ |v| v.capitalize }.join
  end
end
