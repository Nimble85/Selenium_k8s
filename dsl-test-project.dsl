pipelineJob('job-dsl-plugin') {
  definition {
    cpsScm {
      scm {
        git {
          remote {
            url('https://github.com/Nimble85/Selenium_k8s.git')
          }
          branch('*/master')
        }
      }
      lightweight()
    }
  }
}
