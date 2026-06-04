# serpent bash completion
_serpent_completions() {
    local cur prev commands
    commands="fold derive verify json pdb info b4 energy codon minimize sidechain help"
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    
    # If no command yet, suggest commands
    if [[ $COMP_CWORD -eq 1 ]]; then
        COMPREPLY=($(compgen -W "${commands}" -- "${cur}"))
        return 0
    fi
    
    # For commands that take RNA, suggest common bases
    local cmd="${COMP_WORDS[1]}"
    case "${cmd}" in
        fold|derive|json|pdb|b4|energy|codon|minimize|sidechain)
            if [[ $COMP_CWORD -eq 2 ]]; then
                # Suggest nothing (RNA is freeform) or common start codons
                COMPREPLY=($(compgen -W "AUG" -- "${cur}"))
            fi
            ;;
    esac
}
complete -F _serpent_completions serpent
