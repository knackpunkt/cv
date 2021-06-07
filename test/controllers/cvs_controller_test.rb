require 'test_helper'

class CvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cv = cvs(:one)
  end

  test "should get index" do
    get cvs_url
    assert_response :success
  end

  test "should get new" do
    get new_cv_url
    assert_response :success
  end

  test "should create cv" do
    assert_difference('Cv.count') do
      post cvs_url, params: { cv: { address: @cv.address, birth: @cv.birth, city: @cv.city, company1: @cv.company1, company2: @cv.company2, company3: @cv.company3, company: @cv.company, degree1: @cv.degree1, degree2: @cv.degree2, degree3: @cv.degree3, degree4: @cv.degree4, degree5: @cv.degree5, degree: @cv.degree, detail1: @cv.detail1, detail2: @cv.detail2, detail3: @cv.detail3, detail: @cv.detail, email: @cv.email, end1: @cv.end1, end2: @cv.end2, end3: @cv.end3, end: @cv.end, facebook: @cv.facebook, grade1: @cv.grade1, grade2: @cv.grade2, grade3: @cv.grade3, grade4: @cv.grade4, grade5: @cv.grade5, grade: @cv.grade, jobtitle1: @cv.jobtitle1, jobtitle2: @cv.jobtitle2, jobtitle3: @cv.jobtitle3, jobtitle: @cv.jobtitle, language1: @cv.language1, language2: @cv.language2, language3: @cv.language3, language: @cv.language, level1: @cv.level1, level2: @cv.level2, level3: @cv.level3, level4: @cv.level4, level5: @cv.level5, level6: @cv.level6, level7: @cv.level7, level8: @cv.level8, level9: @cv.level9, level: @cv.level, levela: @cv.levela, levelb: @cv.levelb, levelc: @cv.levelc, leveld: @cv.leveld, linkedin: @cv.linkedin, name: @cv.name, nationality: @cv.nationality, phone: @cv.phone, postcode: @cv.postcode, skill1: @cv.skill1, skill2: @cv.skill2, skill3: @cv.skill3, skill4: @cv.skill4, skill5: @cv.skill5, skill6: @cv.skill6, skill7: @cv.skill7, skill8: @cv.skill8, skill9: @cv.skill9, skill: @cv.skill, start1: @cv.start1, start2: @cv.start2, start3: @cv.start3, start: @cv.start, uni1: @cv.uni1, uni2: @cv.uni2, uni3: @cv.uni3, uni4: @cv.uni4, uni5: @cv.uni5, uni: @cv.uni, year1: @cv.year1, year2: @cv.year2, year3: @cv.year3, year4: @cv.year4, year5: @cv.year5, year: @cv.year } }
    end

    assert_redirected_to cv_url(Cv.last)
  end

  test "should show cv" do
    get cv_url(@cv)
    assert_response :success
  end

  test "should get edit" do
    get edit_cv_url(@cv)
    assert_response :success
  end

  test "should update cv" do
    patch cv_url(@cv), params: { cv: { address: @cv.address, birth: @cv.birth, city: @cv.city, company1: @cv.company1, company2: @cv.company2, company3: @cv.company3, company: @cv.company, degree1: @cv.degree1, degree2: @cv.degree2, degree3: @cv.degree3, degree4: @cv.degree4, degree5: @cv.degree5, degree: @cv.degree, detail1: @cv.detail1, detail2: @cv.detail2, detail3: @cv.detail3, detail: @cv.detail, email: @cv.email, end1: @cv.end1, end2: @cv.end2, end3: @cv.end3, end: @cv.end, facebook: @cv.facebook, grade1: @cv.grade1, grade2: @cv.grade2, grade3: @cv.grade3, grade4: @cv.grade4, grade5: @cv.grade5, grade: @cv.grade, jobtitle1: @cv.jobtitle1, jobtitle2: @cv.jobtitle2, jobtitle3: @cv.jobtitle3, jobtitle: @cv.jobtitle, language1: @cv.language1, language2: @cv.language2, language3: @cv.language3, language: @cv.language, level1: @cv.level1, level2: @cv.level2, level3: @cv.level3, level4: @cv.level4, level5: @cv.level5, level6: @cv.level6, level7: @cv.level7, level8: @cv.level8, level9: @cv.level9, level: @cv.level, levela: @cv.levela, levelb: @cv.levelb, levelc: @cv.levelc, leveld: @cv.leveld, linkedin: @cv.linkedin, name: @cv.name, nationality: @cv.nationality, phone: @cv.phone, postcode: @cv.postcode, skill1: @cv.skill1, skill2: @cv.skill2, skill3: @cv.skill3, skill4: @cv.skill4, skill5: @cv.skill5, skill6: @cv.skill6, skill7: @cv.skill7, skill8: @cv.skill8, skill9: @cv.skill9, skill: @cv.skill, start1: @cv.start1, start2: @cv.start2, start3: @cv.start3, start: @cv.start, uni1: @cv.uni1, uni2: @cv.uni2, uni3: @cv.uni3, uni4: @cv.uni4, uni5: @cv.uni5, uni: @cv.uni, year1: @cv.year1, year2: @cv.year2, year3: @cv.year3, year4: @cv.year4, year5: @cv.year5, year: @cv.year } }
    assert_redirected_to cv_url(@cv)
  end

  test "should destroy cv" do
    assert_difference('Cv.count', -1) do
      delete cv_url(@cv)
    end

    assert_redirected_to cvs_url
  end
end
