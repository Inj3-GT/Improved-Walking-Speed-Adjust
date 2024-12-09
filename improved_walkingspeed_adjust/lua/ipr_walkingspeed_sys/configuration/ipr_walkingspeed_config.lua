--- Script By Inj3
--- https://steamcommunity.com/id/Inj3/
--- https://github.com/Inj3-GT
--- GNU GENERAL PUBLIC LICENSE
ipr_WalkSpeed_Config.HUD = true --- Affichage du HUD. | HUD display.
ipr_WalkSpeed_Config.ReduceRunSpeed = 1 --- Réduit la vitesse maximale de course (mettre 1 si vous ne voulez pas de réduction de vitesse de course). | Reduces maximum running speed (set to 1 if you don't want speed reduction).
ipr_WalkSpeed_Config.ReduceSlowWalkSpeed = 0.75 --- Réduit la vitesse maximale de marche lente (mettre 1 si vous ne voulez pas de réduction de vitesse de marche lente). | Reduces maximum slow walk speed (set to 1 if you don't want slow walk speed reduction).
ipr_WalkSpeed_Config.MaxRotation = 8 --- Le nombre de rotations avec la molette de votre souris pour atteindre la vitesse maximale (par défaut : 8). | The number of rotations with your mouse wheel to reach maximum speed (default: 8).
ipr_WalkSpeed_Config.AddKey = {true, --- Ajoute une touche supplémentaire et désactive automatiquement pour le sélecteur d'armes la molette de la souris lorsque vous appuyez sur la combinaison de touches KEY_CAPSLOCK + Molette (par défaut) ! | Adding an extra key and automatically disabled the weapon selector's mouse wheel when the KEY_CAPSLOCK + Wheel key combination is pressed (default) !
    key = KEY_CAPSLOCK --- Ajoute une touche supplémentaire KEY_CAPSLOCK (resté appuyé) combinée avec la molette de la souris (haut ou bas) pour activer la vitesse de marche dynamique. | Adds an additional button combined with the mouse wheel to activate dynamic walking speed.
}

if (SERVER) then
    ipr_WalkSpeed_Config.SendNotification = {true, --- Envoyer une notification lorsque le joueur se connecte. | Send a notification when the player logs on.
        msg = "Utilisez Verr. Maj + Molette (haut ou bas) pour modifier la vitesse de votre personnage."
    }
else
    ipr_WalkSpeed_Config.DisableMWS = false --- Désactive totalement la molette de la souris pour le sélecteur d'armes(vous pouvez toujours utiliser le clavier pour naviguer dans le sélecteur d'armes), si vous souhaitez aussi utiliser uniquement la molette sans combinaison de touche, mettre ipr_WalkSpeed_Config.AddKey en false ! | Completely disables the mouse wheel key for the weapon selector (you can still use the keyboard to navigate through the weapon selector), if you also wish to use only the wheel without key combinations, set ipr_WalkSpeed_Config.AddKey to false !
    ipr_WalkSpeed_Config.DrawBar = true --- Affiche la barre de progression | Show progress bar
    ipr_WalkSpeed_Config.DrawSpeedPercent = true --- Affiche le pourcentage de vitesse | Display speed percentage
    ipr_WalkSpeed_Config.DrawKey = true --- Affiche les touches | Display keys
    ipr_WalkSpeed_Config.Lang = {
        WalkSpeed = "Vitesse :",
        Key1 = "+ Molette",
        Key2 = "Verr. Maj",
    }
end
