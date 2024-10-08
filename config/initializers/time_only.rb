class TimeOnlyType < ActiveRecord::Type::DateTime
  def cast(value)
    value.is_a?(::String) ? super("#{Date.today} #{value}") : super
  end
end

ActiveRecord::Type.register :time_only, TimeOnlyType
