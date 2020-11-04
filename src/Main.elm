module Main exposing (..)

import Browser
import Element exposing (..)
import Element.Background as Background
import Element.Font as Font
import Html exposing (Html, div)
import Html.Attributes exposing (src)



---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ layout [ padding 10 ] elementView
        ]


elementView : Element Msg
elementView =
    row
        []
        [ el
            [ Background.color (rgb255 255 0 0)
            , Font.color (rgb255 255 255 255)
            ]
            (text "Hello")
        , column
            []
            [ text "World"
            , text "of"
            , text "elm-ui"
            ]
        ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
