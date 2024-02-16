# frozen_string_literal: true

require_relative "lib/mystudy_rubymine_gem/version"

Gem::Specification.new do |spec|
  spec.name = "mystudy_rubymine_gem"
  spec.version = MystudyRubymineGem::VERSION
  spec.authors = ["Pjmaciel"]
  spec.email = ["pjmaciel_4@hotmail.com"]

  spec.summary = "A gem containing various algorithms and problems, including searching algorithms, sorting algorithms, and greedy algorithms."
  spec.description = spec.description = <<-DESC
    This gem provides a collection of algorithms and problems implemented in Ruby. It includes algorithms and problems from both Algoritmos 1 and Algoritmos 2 courses.

    ## Algorithms
    ### Searching Algorithms
    - **Jump Search**: A basic searching algorithm.
    - **Find Missing Number**: An algorithm to find a missing number in a sequence.
    - **Fibonacci Search**: A searching algorithm based on the Fibonacci sequence.

    ### Sorting Algorithms
    - **Select Sort**: A basic sorting algorithm.
    - **Merge Sort**: A medium difficulty sorting algorithm.
    - **Quick Sort**: A medium difficulty sorting algorithm.

    ### Greedy Algorithms
    - **Minimum Sum**: A medium difficulty greedy algorithm.
    - **Job Sequencing Problem**: A medium difficulty problem related to job sequencing.
    - **Fractional Knapsack Problem**: A medium difficulty problem related to the knapsack problem.

    ## Problems
    ### String
    - **Common Characters**: A medium difficulty problem related to finding common characters in strings.
    - **Group Words**: A medium difficulty problem related to grouping words.

    ### Array
    - **Reorder Index**: A medium difficulty problem related to reordering indices.
    - **Positive and Negative**: A medium difficulty problem related to positive and negative numbers.

    ### Date
    - **Sum Minute**: A medium difficulty problem related to summing minutes.
    - **Day Week**: A difficult problem related to determining the day of the week.

    For more information and examples, please visit the [GitHub repository](https://github.com/Pjmaciel/mystudy_rubymine_gem).
  DESC
  spec.homepage = "https://github.com/Pjmaciel/mystudy_rubymine_gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Pjmaciel/mystudy_rubymine_gem"
  spec.metadata["changelog_uri"] = "https://github.com/Pjmaciel/mystudy_rubymine_gem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
