cwlVersion: v1.0
class: CommandLineTool
baseCommand: [tar, xvzf]
hints:
  - class: DockerRequirement
    dockerPull: stevetsa/docker-kallisto:latest  
inputs:
  targz:
    type: File
    inputBinding:
      position: 1
outputs:
  fq1:
    type: File
    outputBinding:
      glob: "*_1.fastq"
  fq2:
    type: File
    outputBinding:
      glob: "*_2.fastq"
