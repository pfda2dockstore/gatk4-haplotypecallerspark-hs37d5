baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: gatk4-haplotypecallerspark-hs37d5
inputs:
  extra_opts:
    doc: Additional command-line options that will be appended to the command line
    inputBinding:
      position: 2
      prefix: --extra_opts
    type: string?
  mappings:
    doc: A sorted BAM file on which variants will be called
    inputBinding:
      position: 1
      prefix: --mappings
    type: File
label: GATK 4.0.1.1 HaplotypeCaller (Spark-parallelized) on hs37d5
outputs:
  variants:
    doc: The generated variants (in bgzipped VCF format)
    outputBinding:
      glob: variants/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/gatk4-haplotypecallerspark-hs37d5:2
s:author:
  class: s:Person
  s:name: George Asimenos
