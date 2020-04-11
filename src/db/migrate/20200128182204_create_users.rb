class CreateUsers < ActiveRecord::Migration[6.0]
  # generated from
  # rails generate model User first_name::strign last_name:string email:string
  def change

    # It's a way of defining arguments for a block, in a similar way to def methodname(arg1, arg2)
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      # automatically gnerated for you
      t.timestamps
    end

  end

end
