class CreateTrainings < ActiveRecord::Migration[5.1]
  def change
    create_table :trainings do |t|
      t.text :frage
      t.text :antwort
      t.string :job_type

      t.timestamps
    end
  end
end
