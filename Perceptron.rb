class Perceptron
    def initialize(data, **options)
        @data = data
        @umbral = get_attr(options, "umbral")
        @rate = get_attr(options, "rate")
        @weights = get_attr(options, "weights", [rand(), rand()])
        @learning = true
        @iterations = 0
    end

    def learn
        while @learning
            @iterations += 1
            @learning = false
            @data.each do |pattern|
                a = calculate_total_input(pattern)
                y = activation_function(a)
                d = get_d(pattern)
                change_weights(d, y, pattern)                
            end
        end
    end

    def view_net
        
    end

    def info
        
    end

    private

    def get_attr(options, name, default = rand())
        options.has_key?(name) ? options[name] : default
    end

    def activation_function(a)
        a > 0 ? 1 : 0
    end

    def calculate_total_input(pattern)
        num_entries = pattern.length - 1
        a = (0..num_entries).inject(0) do |a, entry|
            a + (pattern[entry] * @weights[entry])
        end
        @umbral + a
    end

    def change_weights(d, y, pattern)
        error = d - y
        if error != 0
            num_entries = pattern.length - 1
            calculate_weights(num_entries, error, pattern)
            calculate_umbral(error)
            @learning = true
        end
    end

    def calculate_weights(num_entries, error, pattern)
        (0..num_entries).each do |entry|
            @weights[entry] = @weights[entry] + @rate * error * pattern[entry]
        end
    end

    def calculate_umbral(error)
        @umbral = @umbral + rate * error * 1
    end

    def get_d(pattern)
        pattern[pattern.length - 1]
    end
end