require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { channel_name: @project.channel_name, comments: @project.comments, jenkins_failure: @project.jenkins_failure, jenkins_success: @project.jenkins_success, merged: @project.merged, minus_one: @project.minus_one, minus_two: @project.minus_two, name: @project.name, new_patch: @project.new_patch, plus_one: @project.plus_one, plus_two: @project.plus_two, product_approved: @project.product_approved, qa_and_product_approved: @project.qa_and_product_approved, qa_approved: @project.qa_approved, zero: @project.zero }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { channel_name: @project.channel_name, comments: @project.comments, jenkins_failure: @project.jenkins_failure, jenkins_success: @project.jenkins_success, merged: @project.merged, minus_one: @project.minus_one, minus_two: @project.minus_two, name: @project.name, new_patch: @project.new_patch, plus_one: @project.plus_one, plus_two: @project.plus_two, product_approved: @project.product_approved, qa_and_product_approved: @project.qa_and_product_approved, qa_approved: @project.qa_approved, zero: @project.zero }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
