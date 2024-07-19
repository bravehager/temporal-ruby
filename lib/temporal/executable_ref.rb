module Temporal
  ExecutableRef = Struct.new(:klass) do
    def initialize(klass)
      super(klass.to_s)
    end

    def constantize
      Object.const_get(klass)
    end
  end
end
