import jenkins.model.*
import hudson.model.*
import org.jenkinsci.plugins.workflow.job.WorkflowJob
import org.jenkinsci.plugins.workflow.cps.CpsFlowDefinition

def jenkins = Jenkins.instance

def jobName = "vampi-analyzer"
def job = jenkins.createProject(WorkflowJob, jobName)
def pipelineScript = new File('/var/jenkins_home/vampi-analyzer.jenkinsfile').text
job.definition = new CpsFlowDefinition(pipelineScript, true)
job.save()