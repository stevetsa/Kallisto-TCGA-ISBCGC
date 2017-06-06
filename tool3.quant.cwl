#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
baseCommand: [kallisto, quant, -o, temp]
hints:
  DockerRequirement:
    dockerPull: stevetsa/docker-kallisto:latest
inputs:
  index:
    type: File
    inputBinding:
      position: 2
      prefix: -i
  fastq1:
    type: File
    inputBinding:
      position: 3
  fastq2:
    type: File  
    inputBinding:
      position: 4
outputs:
  outTSV:
    type:
      type: array
      items: File
    outputBinding:
      glob: "temp/*.*"
