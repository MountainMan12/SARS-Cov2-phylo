from Bio import SeqIO

ind = int(0) 
ngr = int(0)
brz = int(0)
egy = int(0)
bgd = int(0)

file_handle = open('sequence.fasta','w+')

for seq_record in SeqIO.parse("genomic.fna", "fasta"):
    if(str("NC_045512.2") in str(seq_record)):
        file_handle.write(str(seq_record.description))
        file_handle.write('\n')
        file_handle.write(str(seq_record.seq))
        file_handle.write('\n')

for seq_record in SeqIO.parse("genomic.fna", "fasta"):
    if(str("IND") in str(seq_record)):
        file_handle.write(str(seq_record.description))
        file_handle.write('\n')
        file_handle.write(str(seq_record.seq))
        file_handle.write('\n')
        ind+=1
        if(ind == 10):
            break
            file_handle.write('\n')

for seq_record in SeqIO.parse("genomic.fna", "fasta"):
    if(str("/NGA/") in str(seq_record)):
        file_handle.write(str(seq_record.description))
        file_handle.write('\n')
        file_handle.write(str(seq_record.seq))
        file_handle.write('\n')
        ngr+=1
        if(ngr == 10):
            break
            file_handle.write('\n')

for seq_record in SeqIO.parse("genomic.fna", "fasta"):
    if(str("BRA") in str(seq_record)):
        file_handle.write(str(seq_record.description))
        file_handle.write('\n')
        file_handle.write(str(seq_record.seq))
        file_handle.write('\n')
        brz+=1
        if(brz == 10):
            break
            file_handle.write('\n')

for seq_record in SeqIO.parse("genomic.fna", "fasta"):
    if(str("EGY") in str(seq_record)):
        file_handle.write(str(seq_record.description))
        file_handle.write('\n')
        file_handle.write(str(seq_record.seq))
        file_handle.write('\n')
        egy+=1
        if(egy == 10):
            break
            file_handle.write('\n')

for seq_record in SeqIO.parse("genomic.fna", "fasta"):
    if(str("BGD") in str(seq_record)):
        file_handle.write(str(seq_record.description))
        file_handle.write('\n')
        file_handle.write(str(seq_record.seq))
        file_handle.write('\n')
        bgd+=1
        if(bgd == 10):
            break
            file_handle.write('\n')

file_handle.close()           
