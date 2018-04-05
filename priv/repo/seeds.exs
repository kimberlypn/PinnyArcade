# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PinnyArcade.Repo.insert!(%PinnyArcade.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

defmodule Seeds do
  alias PinnyArcade.Repo
  alias PinnyArcade.Pins.Pin

  def run do
    Repo.delete_all(Pin)
    Repo.insert!(%Pin{ name: "Amplitude", quantity: 2, price: 30.0, img_src: "pin_amplitude.png" })
    Repo.insert!(%Pin{ name: "Anubis", quantity: 2, price: 15.0, img_src: "pin_anubis.png" })
    Repo.insert!(%Pin{ name: "Back Off Barbarian", quantity: 1, price: 17.0, img_src: "pin_back_of_barbarian.png" })
    Repo.insert!(%Pin{ name: "Cardinal", quantity: 1, price: 26.0, img_src: "pin_cardinal.png" })
    Repo.insert!(%Pin{ name: "Cat Guard", quantity: 1, price: 35.0, img_src: "pin_cat_guard.png" })
    Repo.insert!(%Pin{ name: "Catbug", quantity: 1, price: 22.0, img_src: "pin_catbug.png" })
    Repo.insert!(%Pin{ name: "Chariot", quantity: 1, price: 20.0, img_src: "pin_chariot_firma.png" })
    Repo.insert!(%Pin{ name: "Cyberdemon", quantity: 5, price: 15.0, img_src: "pin_cyberdemon.png" })
    Repo.insert!(%Pin{ name: "PAX East 2017 LE", quantity: 3, price: 42.0, img_src: "pin_dogmeat.png" })
    Repo.insert!(%Pin{ name: "Dogmeat", quantity: 5, price: 22.0, img_src: "pin_east_2017_le.png" })
    Repo.insert!(%Pin{ name: "Egg Josh", quantity: 1, price: 19.0, img_src: "pin_egg_josh.png" })
    Repo.insert!(%Pin{ name: "French Fry Jeff", quantity: 1, price: 17.0, img_src: "pin_french_fry_jeff.png" })
    Repo.insert!(%Pin{ name: "Gingerbread Kemper", quantity: 1, price: 30.0, img_src: "pin_gingerbread_kemper.png" })
    Repo.insert!(%Pin{ name: "Golden Whale", quantity: 1, price: 25.0, img_src: "pin_golden_whale.png" })
    Repo.insert!(%Pin{ name: "Gorogoa", quantity: 3, price: 50.0, img_src: "pin_gorogoa.png" })
    Repo.insert!(%Pin{ name: "Gwent Troll", quantity: 3, price: 37.0, img_src: "pin_gwent_troll.png" })
    Repo.insert!(%Pin{ name: "Hearthstone Cards", quantity: 1, price: 55.0, img_src: "pin_hearthstone_cards.png" })
    Repo.insert!(%Pin{ name: "Heli-Kemper", quantity: 1, price: 24.0, img_src: "pin_heli_kemper.png" })
    Repo.insert!(%Pin{ name: "Hobby Jeff", quantity: 1, price: 21.0, img_src: "pin_hobby_jeff.png" })
    Repo.insert!(%Pin{ name: "Ice Cream Erick", quantity: 1, price: 17.0, img_src: "pin_ice_cream_erik.png" })
    Repo.insert!(%Pin{ name: "Lawbreakers Faus", quantity: 4, price: 10.0, img_src: "pin_lawbreakers_faust.png" })
    Repo.insert!(%Pin{ name: "Medius the Cannibal", quantity: 1, price: 28.0, img_src: "pin_medius_the_cannibal.png" })
    Repo.insert!(%Pin{ name: "Master of Orion GNN", quantity: 1, price: 17.0, img_src: "pin_moo_gnn.png" })
    Repo.insert!(%Pin{ name: "Moonrise Nemony", quantity: 1, price: 25.0, img_src: "pin_moonrise_nemony.png" })
    Repo.insert!(%Pin{ name: "Nacho Feh", quantity: 1, price: 18.0, img_src: "pin_nacho_feh.png" })
    Repo.insert!(%Pin{ name: "Nigiri Ryan", quantity: 1, price: 20.0, img_src: "pin_nigiri_ryan.png" })
    Repo.insert!(%Pin{ name: "Nuka Cola Cap", quantity: 2, price: 25.0, img_src: "pin_nuka_cola.png" })
    Repo.insert!(%Pin{ name: "Overwatch Emblem", quantity: 1, price: 80.0, img_src: "pin_overwatch_com.png" })
    Repo.insert!(%Pin{ name: "Pad Thai David", quantity: 1, price: 18.0, img_src: "pin_pad_thai_david.png" })
    Repo.insert!(%Pin{ name: "Kart Kemper", quantity: 1, price: 32.0, img_src: "pin_pax_aus_2016_kemper.png" })
    Repo.insert!(%Pin{ name: "Pie Kristin", quantity: 1, price: 19.0, img_src: "pin_pie_kristin.png" })
    Repo.insert!(%Pin{ name: "Pizza Gavin", quantity: 1, price: 18.0, img_src: "pin_pizza_gavin.png" })
    Repo.insert!(%Pin{ name: "Praise Helix", quantity: 1, price: 130.0, img_src: "pin_praise_helix.png" })
    Repo.insert!(%Pin{ name: "Project Spark", quantity: 2, price: 19.0, img_src: "pin_project_spark.png" })
    Repo.insert!(%Pin{ name: "Question Block", quantity: 2, price: 15.0, img_src: "pin_question_block.png" })
    Repo.insert!(%Pin{ name: "Rock Band 4", quantity: 1, price: 25.0, img_src: "pin_rockband42.png" })
    Repo.insert!(%Pin{ name: "Summer Kemper Cute", quantity: 1, price: 15.0, img_src: "pin_skemper_cute.png" })
    Repo.insert!(%Pin{ name: "Taco Kiko", quantity: 1, price: 17.0, img_src: "pin_taco_kiko.png" })
    Repo.insert!(%Pin{ name: "Teemo", quantity: 1, price: 28.0, img_src: "pin_teemo.png" })
    Repo.insert!(%Pin{ name: "Tobiko Dabe", quantity: 1, price: 14.0, img_src: "pin_tobiko_dabe.png" })
    Repo.insert!(%Pin{ name: "Transformers", quantity: 19, price: 20.0, img_src: "pin_transformers.png" })
    Repo.insert!(%Pin{ name: "Triple Town Bear", quantity: 1, price: 20.0, img_src: "pin_triple_town_bear.png" })
    Repo.insert!(%Pin{ name: "Trivia Murder Party", quantity: 1, price: 0.0, img_src: "pin_trivial_murder_party.png" })
    Repo.insert!(%Pin{ name: "Vault Girl", quantity: 4, price: 25.0, img_src: "pin_vault_girl.png" })
    Repo.insert!(%Pin{ name: "Waffle Travis", quantity: 1, price: 18.0, img_src: "pin_waffle_travis.png" })
  end
end

Seeds.run
