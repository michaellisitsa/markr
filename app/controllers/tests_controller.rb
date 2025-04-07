class TestsController < ApplicationController
    def aggregate
        test = Test.find(params[:testId])
        results = test.results
        mean = results.sum { |result| result.summary_obtained / result.summary_available.to_f * 100 } / results.size.to_f

        # Percentile Calcs
        # Percentile formula per https://www.dummies.com/article/academics-the-arts/math/statistics/how-to-calculate-percentiles-in-statistics-169783/
        sorted = results.map { |result| result.summary_obtained / result.summary_available.to_f * 100 }.sort()
        percentile_values = {}
        [ 0.25, 0.50, 0.75 ].each do |percentile|
            percentile_index = (percentile * results.size).ceil
            key = "p" + sprintf("%.2f", percentile)[2..-1]
        percentile_values[key] = sorted[percentile_index - 1]
        end
        render(json: { mean: mean, count: results.size }.merge(percentile_values))
    end
end
