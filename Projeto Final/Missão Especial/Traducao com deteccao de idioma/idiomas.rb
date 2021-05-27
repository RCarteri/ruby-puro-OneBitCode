class Idiomas
    def lista_idiomas
        idiomas = [{"af" => "Africâner"}, {"am" => "Amárico"}, {"ar" => "Árabe"}, {"az" => "Azerbaijano"}, 
            {"be" => "Bielorrusso"}, {"bg" => "Búlgaro"}, {"bn" => "Bengali"}, {"bs" => "Bósnio"}, {"ca" => "Catalão"}, 
            {"ceb" => "Cebuano"}, {"co" => "Córsico"}, {"cs" => "Tcheco"}, {"cy" => "Galês"}, {"da" => "Dinamarquês"}, 
            {"de" => "Alemão"}, {"el" => "Grego"}, {"en" => "Inglês"}, {"eo" => "Esperanto"}, {"es" => "Espanhol"}, 
            {"et" => "Estoniano"}, {"eu" => "Basco"}, {"fa" => "Persa"}, {"fi" => "Finlandês"}, {"fr" => "Francês"}, 
            {"fy" => "Frísio"}, {"ga" => "Irlandês"}, {"gd" => "Gaélico escocês"}, {"gl" => "Galego"}, {"gu" => "Guzerate"}, 
            {"ha" => "Hauçá"}, {"haw" => "Havaiano"}, {"he" => "Hebraico"}, {"hi" => "Hindi"}, {"hmn" => "Hmong"}, 
            {"hr" => "Croata"}, {"ht" => "Crioulo haitiano"}, {"hu" => "Húngaro"}, {"hy" => "Armênio"}, {"id" => "Indonésio"}, 
            {"ig" => "Igbo"}, {"is" => "Islandês"}, {"it" => "Italian"}, {"ja" => "Japonês"}, {"jv" => "Javanês"}, 
            {"ka" => "Georgiano"}, {"kk" => "Cazaque"}, {"km" => "Cmer"}, {"kn" => "Canará"}, {"ko" => "Coreano"}, 
            {"ku" => "Curdo"}, {"ky" => "Quirguiz"}, {"la" => "Latim"}, {"lb" => "Luxemburguês"}, {"lo" => "Laosiano"}, 
            {"lt" => "Lituano"}, {"lv" => "Letão"}, {"mg" => "Malgaxe"}, {"mi" => "Maori"}, {"mk" => "Macedônio"}, 
            {"ml" => "Malaiala"}, {"mn" => "Mongol"}, {"mr" => "Marata"}, {"ms" => "Malaio"}, {"mt" => "Maltês"}, 
            {"my" => "Myanmar (birmanês)"}, {"ne" => "Nepalês"}, {"nl" => "Holandês"}, {"no" => "Norueguês"}, 
            {"ny" => "Nianja (Chichewa)"}, {"or" => "Oriá"}, {"pa" => "Punjabi"}, {"pl" => "Polonês"}, {"ps" => "Pashto"}, 
            {"pt" => "Português"}, {"ro" => "Romeno"}, {"ru" => "Russo"}, {"rw" => "Kinyarwanda"}, 
            {"sd" => "Sindi"}, {"si" => "Sinhala (cingalês)"}, {"sk" => "Eslovaco"}, {"sl" => "Esloveno"}, {"sm" => "Samoano"}, 
            {"sn" => "Xona"}, {"so" => "Somali"}, {"sq" => "Albanês"}, {"sr" => "Sérvio"}, {"st" => "Sesoto"}, 
            {"su" => "Sundanês"}, {"sv" => "Sueco"}, {"sw" => "Suaíli"}, {"ta" => "Tâmil"}, {"te" => "Telugu"}, 
            {"tg" => "Tajique"}, {"th" => "Tailandês"}, {"tk" => "Turcomano"}, {"tl" => "Tagalo (filipino)"}, {"tr" => "Turco"}, 
            {"tt" => "Tártaro"}, {"ug" => "Uyghur"}, {"uk" => "Ucraniano"}, {"ur" => "Urdu"}, {"uz" => "Usbeque"}, 
            {"vi" => "Vietnamita"}, {"xh" => "Xosa"}, {"yi" => "Ídiche"}, {"yo" => "Iorubá"}, {"zh" => "Chinês "}, 
            {"zh-CN" => "Chinês (simplificado)"}, {"zh-TW" => "Chinês (tradicional)"}, {"zu" => "Zulu"}, {"sair" => "sair"}]
    end
    def retornar_idioma
        loop do
            puts "Digite o número do idioma para traduzir: "

            lista_idiomas.each_with_index  do |idioma, index| 
                puts "#{index + 1} - #{idioma.values.first}"
            end

            idioma_escolhido = gets.chomp.to_i - 1

            case idioma_escolhido
            when 0..109
                @key = lista_idiomas[idioma_escolhido].keys.first
                @value =lista_idiomas[idioma_escolhido].values.first
            when 110
                @key = 0
                @value = "Programa encerrado."
                break
            else
                puts 'Opção inválida'
                next
            end
            break
        end
        [@key, @value]
    end
end