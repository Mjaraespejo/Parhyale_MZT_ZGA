# After running Samba and TGSGpaCloser, the output: /drives/raid/AboobakerLab/manuel/data_phaw_analysis/asm_gap_filling/TGS-GapCloser_anlysis/sambaAsm_analysis/phaw_sambaAsm.scaff_seqs contained special characters.
# I used this script to edit those names and generate the final assembly ouput Phaw5.1


count=1

File.open("phaw_sambaAsm.scaff_seqs.tbl","r").each do |line|
    if line.split("\t")[0].include?(":") 
        #puts #line.split("\t")[0] + "\t" "Scaffold_N" + count.to_s
        puts "Scaffold_N" + count.to_s  + "\t" + line.chomp.split("\t")[1]
        count += 1
    else
        puts line#.split("\t")[0]
    end
end

