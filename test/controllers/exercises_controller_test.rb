require "test_helper"

class ExercisesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/exercises.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Exercise.count, data.length
  end

  test "create" do
    assert_difference "Exercise.count", 1 do
      post "/exercises.json", params: { workout_id: 1 name: "bench", reps: 10, sets: "3 sets of 10", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgy5RWhaieyrevjvS6ErgThrTBiYQL44cfTA&s"}
      assert_response 200
    end
  end
end
