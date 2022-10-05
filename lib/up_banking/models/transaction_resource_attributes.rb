=begin
#Up API

#The Up API gives you programmatic access to your balances and transaction data. You can request past transactions or set up webhooks to receive real-time events when new transactions hit your account. It’s new, it’s exciting and it’s just the beginning. 

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'date'
require 'time'

module UpBankingClient
  class TransactionResourceAttributes
    # The current processing status of this transaction, according to whether or not this transaction has settled or is still held. 
    attr_accessor :status

    # The original, unprocessed text of the transaction. This is often not a perfect indicator of the actual merchant, but it is useful for reconciliation purposes in some cases. 
    attr_accessor :raw_text

    # A short description for this transaction. Usually the merchant name for purchases. 
    attr_accessor :description

    # Attached message for this transaction, such as a payment message, or a transfer note. 
    attr_accessor :message

    # Boolean flag set to true on transactions that support the use of categories. 
    attr_accessor :is_categorizable

    attr_accessor :hold_info

    attr_accessor :round_up

    attr_accessor :cashback

    attr_accessor :amount

    attr_accessor :foreign_amount

    # The date-time at which this transaction settled. This field will be `null` for transactions that are currently in the `HELD` status. 
    attr_accessor :settled_at

    # The date-time at which this transaction was first encountered. 
    attr_accessor :created_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'status' => :'status',
        :'raw_text' => :'rawText',
        :'description' => :'description',
        :'message' => :'message',
        :'is_categorizable' => :'isCategorizable',
        :'hold_info' => :'holdInfo',
        :'round_up' => :'roundUp',
        :'cashback' => :'cashback',
        :'amount' => :'amount',
        :'foreign_amount' => :'foreignAmount',
        :'settled_at' => :'settledAt',
        :'created_at' => :'createdAt'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'status' => :'TransactionStatusEnum',
        :'raw_text' => :'String',
        :'description' => :'String',
        :'message' => :'String',
        :'is_categorizable' => :'Boolean',
        :'hold_info' => :'TransactionResourceAttributesHoldInfo',
        :'round_up' => :'TransactionResourceAttributesRoundUp',
        :'cashback' => :'TransactionResourceAttributesCashback',
        :'amount' => :'TransactionResourceAttributesAmount',
        :'foreign_amount' => :'TransactionResourceAttributesForeignAmount',
        :'settled_at' => :'Time',
        :'created_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'raw_text',
        :'message',
        :'hold_info',
        :'round_up',
        :'cashback',
        :'foreign_amount',
        :'settled_at',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `UpBankingClient::TransactionResourceAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `UpBankingClient::TransactionResourceAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'raw_text')
        self.raw_text = attributes[:'raw_text']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'is_categorizable')
        self.is_categorizable = attributes[:'is_categorizable']
      end

      if attributes.key?(:'hold_info')
        self.hold_info = attributes[:'hold_info']
      end

      if attributes.key?(:'round_up')
        self.round_up = attributes[:'round_up']
      end

      if attributes.key?(:'cashback')
        self.cashback = attributes[:'cashback']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'foreign_amount')
        self.foreign_amount = attributes[:'foreign_amount']
      end

      if attributes.key?(:'settled_at')
        self.settled_at = attributes[:'settled_at']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @is_categorizable.nil?
        invalid_properties.push('invalid value for "is_categorizable", is_categorizable cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @status.nil?
      return false if @description.nil?
      return false if @is_categorizable.nil?
      return false if @amount.nil?
      return false if @created_at.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          status == o.status &&
          raw_text == o.raw_text &&
          description == o.description &&
          message == o.message &&
          is_categorizable == o.is_categorizable &&
          hold_info == o.hold_info &&
          round_up == o.round_up &&
          cashback == o.cashback &&
          amount == o.amount &&
          foreign_amount == o.foreign_amount &&
          settled_at == o.settled_at &&
          created_at == o.created_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [status, raw_text, description, message, is_categorizable, hold_info, round_up, cashback, amount, foreign_amount, settled_at, created_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = UpBankingClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end