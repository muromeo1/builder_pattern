module BaseInteractor
  def self.included(klass)
    klass.extend ClassMethods
  end

  def attribute_exists?(method_name)
    context.public_send(method_name).present?
  end

  def method_valid?(method_name)
    self.send(method_name).present?
  rescue
    false
  end

  module ClassMethods
    def requires(*args)
      before do
        args.each do |arg|
          context.fail!(error: "Attribute :#{arg} cant be nil") unless attribute_exists?(arg)
        end
      end

      delegate(*args, to: :context)
    end

    def validate(*args)
      before do
        args.each do |arg|
          context.fail!(error: "Method ##{arg} returned false") unless method_valid?(arg)
        end
      end
    end
  end
end
