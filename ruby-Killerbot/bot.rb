class Bot
    @letter = " "
    @x = 0
    @y = 0
    @map = []

    def initialize(letter)
        @letter = letter
    end

    def update_map(mapa)
        puts mapa
        rows = mapa.split('\n')
        map = []
        rows.each_with_index do |row, index|
            map[index] = row.split(",")

        end
        pos = mapa.index(@letter) / 2
        @y = pos / rows.length
        @x = pos % rows.length
    end

    def move
        mov = Random.rand(1)
        puts "mov#{mov}"
        case mov
            when 0
                return "N"
            when 1
                return "E"
            when 2
                return "S"
            when 3
                return "O"
            when 4
                return "BN"
            when 5
                return "BE"
            when 6
                return "BS"
            when 7
                return "BO"
            when 8
                return "P"
        end

    end
end
