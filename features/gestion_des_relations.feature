# language: fr

Fonctionnalité: Gestion des relations
  Contexte:
    Étant donné CoRM est initialisé
    Et un utilisateur connecté

  Scénario: Navigation à travers les relations
    Étant donné un compte "A"
    Et un compte "B"
    Lorsque je créé une relation "client" qui lie le compte "A" au compte "B"
    Alors je peux me rendre sur la fiche du compte "B" grâce a sa relation "client"
