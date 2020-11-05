module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)



---- MODEL ----


type alias Model =
    { content : String }


init : ( Model, Cmd Msg )
init =
    ( { content = "" }, Cmd.none )



---- UPDATE ----


type Msg
    = Change String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Change newContent ->
            ( { model | content = newContent }, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div [ class "columns" ]
        [ div [ class "column" ]
            [ input [ class "input", placeholder "message", value model.content, onInput Change ] []
            ]
        , div [ class "column" ]
            [ a [ class "button is-primary" ] [ text "send" ] ]
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
