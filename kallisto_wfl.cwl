#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: Workflow
inputs:
  TARGZ: File
  CDNA: File
  IDXNAME: string
outputs:
  outTSV:
    type: 
      type: array
      items: File
    outputSource: quant/outTSV
steps:
  indextool:
    run: tool1.indextool.cwl
    in:
      idxname: IDXNAME
      cdna: CDNA
    out: [idx]
  untar:
    run: tool2.untar.cwl
    in:
      targz: TARGZ
    out: [fq1, fq2]      
  quant:
    run: tool3.quant.cwl
    in:
      fastq1: untar/fq1
      fastq2: untar/fq2
      index: indextool/idx
    out: [outTSV]

