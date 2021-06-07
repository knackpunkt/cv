require 'test_helper'

class LebenslaufsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lebenslauf = lebenslaufs(:one)
  end

  test "should get index" do
    get lebenslaufs_url
    assert_response :success
  end

  test "should get new" do
    get new_lebenslauf_url
    assert_response :success
  end

  test "should create lebenslauf" do
    assert_difference('Lebenslauf.count') do
      post lebenslaufs_url, params: { lebenslauf: { address: @lebenslauf.address, birth: @lebenslauf.birth, city: @lebenslauf.city, company1: @lebenslauf.company1, company2: @lebenslauf.company2, company3: @lebenslauf.company3, company: @lebenslauf.company, degree1: @lebenslauf.degree1, degree2: @lebenslauf.degree2, degree3: @lebenslauf.degree3, degree4: @lebenslauf.degree4, degree5: @lebenslauf.degree5, degree: @lebenslauf.degree, detail1: @lebenslauf.detail1, detail2: @lebenslauf.detail2, detail3: @lebenslauf.detail3, detail: @lebenslauf.detail, email: @lebenslauf.email, end1: @lebenslauf.end1, end2: @lebenslauf.end2, end3: @lebenslauf.end3, end: @lebenslauf.end, facebook: @lebenslauf.facebook, grade1: @lebenslauf.grade1, grade2: @lebenslauf.grade2, grade3: @lebenslauf.grade3, grade4: @lebenslauf.grade4, grade5: @lebenslauf.grade5, grade: @lebenslauf.grade, jobtitle1: @lebenslauf.jobtitle1, jobtitle2: @lebenslauf.jobtitle2, jobtitle3: @lebenslauf.jobtitle3, jobtitle: @lebenslauf.jobtitle, language1: @lebenslauf.language1, language2: @lebenslauf.language2, language3: @lebenslauf.language3, language: @lebenslauf.language, linkedin: @lebenslauf.linkedin, name: @lebenslauf.name, nationality: @lebenslauf.nationality, niveau1: @lebenslauf.niveau1, niveau2: @lebenslauf.niveau2, niveau3: @lebenslauf.niveau3, niveau: @lebenslauf.niveau, phone: @lebenslauf.phone, postcode: @lebenslauf.postcode, skill1: @lebenslauf.skill1, skill2: @lebenslauf.skill2, skill3: @lebenslauf.skill3, skill4: @lebenslauf.skill4, skill5: @lebenslauf.skill5, skill6: @lebenslauf.skill6, skill7: @lebenslauf.skill7, skill: @lebenslauf.skill, start1: @lebenslauf.start1, start2: @lebenslauf.start2, start3: @lebenslauf.start3, start: @lebenslauf.start, uni1: @lebenslauf.uni1, uni2: @lebenslauf.uni2, uni3: @lebenslauf.uni3, uni4: @lebenslauf.uni4, uni5: @lebenslauf.uni5, uni: @lebenslauf.uni, year1: @lebenslauf.year1, year2: @lebenslauf.year2, year3: @lebenslauf.year3, year4: @lebenslauf.year4, year5: @lebenslauf.year5, year: @lebenslauf.year } }
    end

    assert_redirected_to lebenslauf_url(Lebenslauf.last)
  end

  test "should show lebenslauf" do
    get lebenslauf_url(@lebenslauf)
    assert_response :success
  end

  test "should get edit" do
    get edit_lebenslauf_url(@lebenslauf)
    assert_response :success
  end

  test "should update lebenslauf" do
    patch lebenslauf_url(@lebenslauf), params: { lebenslauf: { address: @lebenslauf.address, birth: @lebenslauf.birth, city: @lebenslauf.city, company1: @lebenslauf.company1, company2: @lebenslauf.company2, company3: @lebenslauf.company3, company: @lebenslauf.company, degree1: @lebenslauf.degree1, degree2: @lebenslauf.degree2, degree3: @lebenslauf.degree3, degree4: @lebenslauf.degree4, degree5: @lebenslauf.degree5, degree: @lebenslauf.degree, detail1: @lebenslauf.detail1, detail2: @lebenslauf.detail2, detail3: @lebenslauf.detail3, detail: @lebenslauf.detail, email: @lebenslauf.email, end1: @lebenslauf.end1, end2: @lebenslauf.end2, end3: @lebenslauf.end3, end: @lebenslauf.end, facebook: @lebenslauf.facebook, grade1: @lebenslauf.grade1, grade2: @lebenslauf.grade2, grade3: @lebenslauf.grade3, grade4: @lebenslauf.grade4, grade5: @lebenslauf.grade5, grade: @lebenslauf.grade, jobtitle1: @lebenslauf.jobtitle1, jobtitle2: @lebenslauf.jobtitle2, jobtitle3: @lebenslauf.jobtitle3, jobtitle: @lebenslauf.jobtitle, language1: @lebenslauf.language1, language2: @lebenslauf.language2, language3: @lebenslauf.language3, language: @lebenslauf.language, linkedin: @lebenslauf.linkedin, name: @lebenslauf.name, nationality: @lebenslauf.nationality, niveau1: @lebenslauf.niveau1, niveau2: @lebenslauf.niveau2, niveau3: @lebenslauf.niveau3, niveau: @lebenslauf.niveau, phone: @lebenslauf.phone, postcode: @lebenslauf.postcode, skill1: @lebenslauf.skill1, skill2: @lebenslauf.skill2, skill3: @lebenslauf.skill3, skill4: @lebenslauf.skill4, skill5: @lebenslauf.skill5, skill6: @lebenslauf.skill6, skill7: @lebenslauf.skill7, skill: @lebenslauf.skill, start1: @lebenslauf.start1, start2: @lebenslauf.start2, start3: @lebenslauf.start3, start: @lebenslauf.start, uni1: @lebenslauf.uni1, uni2: @lebenslauf.uni2, uni3: @lebenslauf.uni3, uni4: @lebenslauf.uni4, uni5: @lebenslauf.uni5, uni: @lebenslauf.uni, year1: @lebenslauf.year1, year2: @lebenslauf.year2, year3: @lebenslauf.year3, year4: @lebenslauf.year4, year5: @lebenslauf.year5, year: @lebenslauf.year } }
    assert_redirected_to lebenslauf_url(@lebenslauf)
  end

  test "should destroy lebenslauf" do
    assert_difference('Lebenslauf.count', -1) do
      delete lebenslauf_url(@lebenslauf)
    end

    assert_redirected_to lebenslaufs_url
  end
end
