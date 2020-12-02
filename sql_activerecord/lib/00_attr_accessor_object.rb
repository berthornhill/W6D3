class AttrAccessorObject
  def self.my_attr_accessor(*names)
    #self attr_accessor object
    
    names.each do |name|
      define_method(name.to_s) do
        self.instance_variable_get("@#{name}")   #self instance of att_acc object
      end

      define_method("#{name}=") do |value|
        self.instance_variable_set("@#{name}", value)
      end
    end

  end
end

AttrAccessorObject.my_attr_accessor(:x, :y, "z")