require 'test_helper'

class FeatsControllerTest < ActionController::TestCase
  setup do
    @feat = feats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feat" do
    assert_difference('Feat.count') do
      post :create, feat: { benefit: @feat.benefit, companion_familiar: @feat.companion_familiar, completion_benefit: @feat.completion_benefit, critical: @feat.critical, description: @feat.description, fulltext: @feat.fulltext, goal: @feat.goal, grit: @feat.grit, multiples: @feat.multiples, name: @feat.name, normal: @feat.normal, note: @feat.note, performance: @feat.performance, prerequisite_feats: @feat.prerequisite_feats, prerequisites: @feat.prerequisites, race_name: @feat.race_name, racial: @feat.racial, source: @feat.source, special: @feat.special, style: @feat.style, suggested_traits: @feat.suggested_traits, teamwork: @feat.teamwork, type: @feat.type }
    end

    assert_redirected_to feat_path(assigns(:feat))
  end

  test "should show feat" do
    get :show, id: @feat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feat
    assert_response :success
  end

  test "should update feat" do
    patch :update, id: @feat, feat: { benefit: @feat.benefit, companion_familiar: @feat.companion_familiar, completion_benefit: @feat.completion_benefit, critical: @feat.critical, description: @feat.description, fulltext: @feat.fulltext, goal: @feat.goal, grit: @feat.grit, multiples: @feat.multiples, name: @feat.name, normal: @feat.normal, note: @feat.note, performance: @feat.performance, prerequisite_feats: @feat.prerequisite_feats, prerequisites: @feat.prerequisites, race_name: @feat.race_name, racial: @feat.racial, source: @feat.source, special: @feat.special, style: @feat.style, suggested_traits: @feat.suggested_traits, teamwork: @feat.teamwork, type: @feat.type }
    assert_redirected_to feat_path(assigns(:feat))
  end

  test "should destroy feat" do
    assert_difference('Feat.count', -1) do
      delete :destroy, id: @feat
    end

    assert_redirected_to feats_path
  end
end
