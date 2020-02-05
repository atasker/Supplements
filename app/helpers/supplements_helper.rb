module SupplementsHelper

  def string_to_hash(string)
    hash = eval(string)
    return hash
  end

  def string_to_array(string)
    array = string.split(',')
    return array
  end

end
