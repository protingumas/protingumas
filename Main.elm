{-
 -  The Protingumas homepage.
 -  Copyright (C) 2017  Ryan Y.
 -
 -  This program is free software: you can redistribute it and/or modify
 -  it under the terms of the GNU General Public License as published by
 -  the Free Software Foundation, either version 3 of the License, or
 -  (at your option) any later version.
 -
 -  This program is distributed in the hope that it will be useful,
 -  but WITHOUT ANY WARRANTY; without even the implied warranty of
 -  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 -  GNU General Public License for more details.
 -
 -  You should have received a copy of the GNU General Public License
 -  along with this program.  If not, see <https://www.gnu.org/licenses/>.
 -}
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main =
  Html.beginnerProgram { model = Index, view = view, update = update }

type Route =
  Index

type Msg = SwitchTo Route

update : Msg -> Route -> Route
update msg model =
  case msg of
    SwitchTo Index ->
      Index

view : Route -> Html Msg
view route =
  case route of
    Index ->
      div [] [ text "Coming soon!" ]
