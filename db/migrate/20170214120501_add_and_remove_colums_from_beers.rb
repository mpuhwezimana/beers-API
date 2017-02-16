class AddAndRemoveColumsFromBeers < ActiveRecord::Migration[5.0]
  def change
    rename_column :beers, :supplier, :style
    rename_column :beers, :price, :hop
    add_column :beers, :yeast, :string
    add_column :beers, :malts, :string
    add_column :beers, :ibu, :string
    add_column :beers, :alcohol, :string
    add_column :beers, :blg, :string
  end
end