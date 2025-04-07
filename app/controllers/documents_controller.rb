class DocumentsController < ApplicationController
    # Request does not originate from the same origin, override CSRF authenticity check
    # i.e. it will be sent from external system, rather than from the browser
    # running on same port that Rails is listening on.
    # https://stackoverflow.com/a/35184796/12462631
    protect_from_forgery with: :null_session

    def import
        h = Hash.from_xml(request.body.read)
        result_array = h["mcq_test_results"]["mcq_test_result"]
        result_array.each do |attributes|
            test = Test.find_or_create_by(id: attributes["test_id"])
            Result.create!(
                student_number: attributes["student_number"],
                first_name: attributes["first_name"],
                last_name: attributes["last_name"],
                summary_available: attributes["summary_marks"]["available"],
                summary_obtained: attributes["summary_marks"]["obtained"],
                test_id: test.id
            )
            #      TODO:
            #      - Checks if a previous combination of test-id and student-id combo exists
            #        - if yes: updates the available or obtained score if its higher
            #        - if no: creates the model
            #      - if the document is missing key bits reject. Reject entire document.
        end
        render(json: { success: true }, status: 201)
    end
end
