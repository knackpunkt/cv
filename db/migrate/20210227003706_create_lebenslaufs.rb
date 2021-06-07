class CreateLebenslaufs < ActiveRecord::Migration[5.1]
  def change
    create_table :lebenslaufs do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :postcode
      t.string :phone
      t.string :email
      t.date :birth
      t.string :nationality
      t.string :facebook
      t.string :linkedin
      t.string :degree
      t.string :uni
      t.string :grade
      t.string :year
      t.string :degree1
      t.string :uni1
      t.string :grade1
      t.string :year1
      t.string :degree2
      t.string :uni2
      t.string :grade2
      t.string :year2
      t.string :degree3
      t.string :uni3
      t.string :grade3
      t.string :year3
      t.string :degree4
      t.string :uni4
      t.string :grade4
      t.string :year4
      t.string :degree5
      t.string :uni5
      t.string :grade5
      t.string :year5
      t.string :company
      t.string :jobtitle
      t.string :start
      t.string :end
      t.text :detail
      t.string :company1
      t.string :jobtitle1
      t.string :start1
      t.string :end1
      t.text :detail1
      t.string :company2
      t.string :jobtitle2
      t.string :start2
      t.string :end2
      t.text :detail2
      t.string :company3
      t.string :jobtitle3
      t.string :start3
      t.string :end3
      t.text :detail3
      t.string :skill
      t.string :skill1
      t.string :skill2
      t.string :skill3
      t.string :skill4
      t.string :skill5
      t.string :skill6
      t.string :skill7
      t.string :language
      t.string :niveau
      t.string :language1
      t.string :niveau1
      t.string :language2
      t.string :niveau2
      t.string :language3
      t.string :niveau3

      t.timestamps
    end
  end
end
