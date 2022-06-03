configfile: "/mnt/cbis/home/yongshan/kallisto_snakemake/tdp43_nestin_thlm_e14/config/config.yaml"

include: "rules/common.smk"
include: "rules/kallisto_quant.smk"

rule all:
    input:
        expand(config["OUT_FILE"]+"/abundance.tsv",sample_name=SAMPLES)