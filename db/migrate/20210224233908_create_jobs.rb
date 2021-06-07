class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.text :requirement
      t.string :email
      t.string :location
      t.string :start
      t.string :salary
      t.string :job_type

      t.timestamps
    end
  end
end
