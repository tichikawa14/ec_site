module ProductDecorator
    def num_to_currency
        number_to_currency(price, :locale => 'jp')
    end
end
