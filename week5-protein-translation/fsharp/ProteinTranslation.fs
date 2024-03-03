module ProteinTranslation

let rec convertRnaToCodons rna = 
    match rna with
    | "" -> []
    | _ -> rna.[0..2] :: convertRnaToCodons rna.[3..];

let translateCodon codon = 
    match codon with
    | "AUG" -> "Methionine"
    | "UUU" | "UUC" -> "Phenylalanine"
    | "UUA" | "UUG" -> "Leucine"
    | "UCU" | "UCC" | "UCA" | "UCG" -> "Serine"
    | "UAU" | "UAC" -> "Tyrosine"
    | "UGU" | "UGC" -> "Cysteine"
    | "UGG" -> "Tryptophan"
    | _ -> "STOP"

let rec takeUntilStop codons = 
    match codons with
    | [] | "STOP" :: _ -> []
    | h :: t -> h :: takeUntilStop t;

let proteins rna = 
    rna
    |> convertRnaToCodons
    |> List.map translateCodon
    |> takeUntilStop