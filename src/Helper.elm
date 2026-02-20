module Helper exposing (..)

import Html
import Html.Attributes


joinwords : String -> String -> String
joinwords word1 word2 =
    word1 ++ " " ++ word2


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list


headers : String -> Html.Html msg
headers palabra =
    Html.div []
        [ Html.h1 [] [ Html.text palabra ]
        , Html.h2 [] [ Html.text palabra ]
        , Html.h3 [] [ Html.text palabra ]
        , Html.h4 [] [ Html.text palabra ]
        , Html.h5 [] [ Html.text palabra ]
        , Html.h6 [] [ Html.text palabra ]
        ]


hyperlink : String -> String -> Html.Html msg
hyperlink url label =
    Html.a [ Html.Attributes.href url ] [ Html.text label ]



-- Puedes usar una definición como la siguiente para probar y visualizar tus resultados, solo debes definir "headers" y "hyperlink"
--main : Html.Html msg
--main =
--    Html.div [] [ headers "Titulos", hyperlink "https://upa.edu.mx" "My School" ]
