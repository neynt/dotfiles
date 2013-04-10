import XMonad
import XMonad.Layout.NoBorders
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig
myBar = "xmobar"
myPP = xmobarPP {
    ppCurrent = xmobarColor "#A2A754" "" . wrap "" "",
    ppTitle   = xmobarColor "#A2A754" "" . (' ':)
}
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

myManageHook = composeAll
    [ isFullscreen --> doFullFloat
    ]

myConfig = defaultConfig {
    terminal           = "xfce4-terminal",
    modMask            = mod4Mask,
    borderWidth        = 2,
    normalBorderColor  = "#515246",
    focusedBorderColor = "#A2A754",
    manageHook         = manageDocks <+> myManageHook <+> manageHook defaultConfig,
    layoutHook         = smartBorders $ avoidStruts $ layoutHook defaultConfig
}
