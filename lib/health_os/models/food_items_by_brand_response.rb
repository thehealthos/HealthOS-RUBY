# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module HealthOs
  class FoodItemsByBrandResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :item_name

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :calories

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :serving_qty

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :serving_unit

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :food_item_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :food_brand_id

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["item_name"] = "item_name"
        @hash["calories"] = "calories"
        @hash["serving_qty"] = "serving_qty"
        @hash["serving_unit"] = "serving_unit"
        @hash["food_item_id"] = "food_item_id"
        @hash["food_brand_id"] = "food_brand_id"
      end
      @hash
    end

    def initialize(item_name = nil,
                   calories = nil,
                   serving_qty = nil,
                   serving_unit = nil,
                   food_item_id = nil,
                   food_brand_id = nil)
      @item_name = item_name
      @calories = calories
      @serving_qty = serving_qty
      @serving_unit = serving_unit
      @food_item_id = food_item_id
      @food_brand_id = food_brand_id
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        item_name = hash["item_name"]
        calories = hash["calories"]
        serving_qty = hash["serving_qty"]
        serving_unit = hash["serving_unit"]
        food_item_id = hash["food_item_id"]
        food_brand_id = hash["food_brand_id"]

        # Create object from extracted values
        FoodItemsByBrandResponse.new(item_name,
                                     calories,
                                     serving_qty,
                                     serving_unit,
                                     food_item_id,
                                     food_brand_id)
      end
    end
  end
end
