Sequel.migration do

  up do
    alter_table(:gateways) do
      drop_index :pubkey
      add_index :pubkey
    end
  end

  down do
    alter_table(:gateways) do
      drop_index :pubkey
      add_index :pubkey, :unique=>true
    end
  end

end
