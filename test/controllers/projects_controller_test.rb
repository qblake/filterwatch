require 'test_helper'
#
class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create project' do
    assert_difference('Project.count') do
      post :create, project: { link: @project.link }
    end

    assert_redirected_to root_path(assigns(:project))
  end

  test 'should load events' do
    post :create, project: { link: @project.link }
    event = Event.last
    assert_equal 'rails/rails', event.data['repo'][1][1]
  end

  test 'should show project' do
    get :show, id: @project
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @project
    assert_response :success
  end

  test 'should update project' do
    patch :update, id: @project, project: { link: @project.link }
    assert_redirected_to project_path(assigns(:project))
  end

  test 'should destroy project' do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to root_path
  end
end
