#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
baseCommand: [kallisto, index]
hints:
  DockerRequirement:
    dockerPull: stevetsa/docker-kallisto:latest
inputs:
  idxname:
    type: string
    inputBinding:
      position: 1
      prefix: -i
  cdna:
    type: File
    inputBinding:
      position: 2
outputs:
  idx:
    type: File
    outputBinding:
      glob: "*.idx"


    
