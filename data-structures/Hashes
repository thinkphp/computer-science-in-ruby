def main()
    myDic = {
      "Venezuela" => "Caracas",
      "Colombia" =>"Bogota",
      "Argentina" => "Buenos Aires",
      "Chile" => "Santiago"
    }

    myDic2 = {
      Venezuela: "Caracas",
      Colombia: "Bogota",
      Argentina: "Buenos Aires",
      Chile: "Santiago"
    }
    print myDic.keys
    print "\ncountry="
    search = gets.chomp.capitalize
    # method 0
    print myDic2[:"#{search}"]
    # method 1
    print"\n"
    print myDic.select{|k, v| k == search}.values[0]
    # method 2
    print"\n"
    print myDic.fetch(search)
    print"\n"
end
main
