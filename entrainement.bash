# Programme d'entrainement Bash

echo "Crédits : Samy CHAABI"
echo "Valeur de retour du dernier programme: $?"
echo "PID du script: $$"
echo "Nombre d'arguments passés au script: $#"
echo "Tous les arguments passés au script: $@"
echo "Utilisateur actuel: $USER"

sleep 5;

echo "Entrer votre nom d'utilisateur :";
read nom;

if [[ "$nom" == "$USER" ]]; then
    echo "DEMARRAGE DU PROGRAMME D'ENTRAÎNEMENT BASH";
    echo "Salut $nom et bienvenue dans ce programme d'entraînement au bash"
    sleep 3;
    echo "Tu es dans le dossier $(pwd)"
    sleep 3;

    echo "UTILISATION DU FOR";
    array=(un deux trois quatre cinque six);
    for item in "${array[@]}"; do
        echo "$item"
    done
    sleep 5;

    echo "GENERATION DE LISTES ARBITRAIRES";
    sleep 3;
    echo "Nombre de 1 à 100";
    from=1
    to=100
    echo {$from..$to};
    sleep 3;
    echo "Alphabet de a à z";
    echo {a..z};

    sleep 5;

    echo "LISTER LES TACHES (jobs) EXECUTES EN ARRIERE-PLAN (background)";
    sleep 3;
    bg;
    # kill %1;
    sleep 30 & jobs;

    echo "LISTER LES TACHES (jobs) EXECUTES AU PREMIER PLAN (foreground)";
    sleep 3;
    fg;
    # kill %2;
    sleep 30 & jobs;

    echo "VOULEZ-VOUS NETTOYER LE TERMINAL? (y/n)";
    read isClear;

    if [[ "$isClear" == "y" ]]; then
        echo "NETTOYAGE DU TERMINAL...";
        sleep 1;
        clear;
        echo "LE TERMINAL A BIEN ETE NETTOYE";
    fi
    echo "FIN DU PROGRAMME D'ENTRAÎNEMENT BASH";
    sleep 2;

else
    echo "Le nom entré et votre username ne correspondent pas.";
    # Restart du script ou non
    echo "VOULEZ-VOUS RESTART LE SCRIPT? (y/n)";
    read isRetry;
    if [[ "$isRetry" == "y" ]]; then
        echo "RESTART DU SCRIPT...";
        sleep 1;
        clear;
        exec "./entrainement.bash";
    fi
    echo "FIN DU PROGRAMME";
    sleep 2;
fi