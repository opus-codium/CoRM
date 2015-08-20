# language: fr

Fonctionnalité: Gestion des événements
  Contexte:
    Étant donné CoRM est initialisé
    Et un utilisateur connecté
    Et un compte "A"

  @wip
  Scénario: Création d'un événement dans le futur
    Lorsque je créé une réunion le lendemain
    Et que j'affiche les événements du compte "A"
    Alors je vois "dans environ 24 heures"
