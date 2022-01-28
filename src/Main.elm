module Main exposing (..)

import Browser
import Html exposing (Html)
import Element
    exposing
        ( Element
        , el
        , column
        , link
        , text
        , centerX
        , centerY
        , spacing
        , padding
        )
import Element.Font as Font
import Element.Background as Bg
import Element.Border as Border
import Colors.Opaque 
        exposing 
                ( lightblue
                , lightsalmon
                , lightseagreen
                )


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


type Model
    = ReplaceModel


init : () -> ( Model, Cmd Msg )
init flags =
    ( ReplaceModel
    , Cmd.none
    )


type Msg
    = NoopMsg


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoopMsg ->
            ( ReplaceModel, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions _ = Sub.none


view : Model -> Html Msg
view model =
    Element.layout [] <|
        column [ centerX, centerY, spacing 15, Border.rounded 5, Bg.color lightseagreen, padding 20 ]
            [ el [ centerX, Font.size 48, Font.color lightsalmon ] <| text "Template for Elm projects"
            , link [ Font.size 24, Font.color lightblue ] 
                { label = text "https://github.com/moseschmiedel/elm-template"
                , url = "https://github.com/moseschmiedel/elm-template"
                }
            ]
