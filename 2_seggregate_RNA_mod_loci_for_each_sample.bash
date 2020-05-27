cat /home/quy/Henry_database/clean_data/clean_data_selected_column/* > /home/quy/Henry_database/clean_data/all_results_compiled.txt
cat ~/Henry_database/clean_data/all_results_compiled.txt | grep -v "analysis_ID" > ~/Henry_database/clean_data/all_results_compiled_no_header.txt
mkdir ~/Henry_database/clean_data/RNA_mod_for_each_sample
cat /home/quy/Henry_database/clean_data/all_results_compiled_no_header.txt | awk 'BEGIN{FS="\t";OFS="\t"} {print>>$1}'

rm ~/Henry_database/clean_data/all_results_compiled.txt

cut -f 2,3,4 all_results_compiled_no_header.txt | uniq  > all_genomic_loci.txt
