import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Layout.Spacing
import XMonad.Layout.Gaps
import qualified XMonad.StackSet as W
import XMonad.Util.EZConfig

main = xmonad =<< statusBar myBar myPp myToggleBarKey myConfig

myBar = "xmobar"

myPp = xmobarPP
    { ppSep = " "
    }

myToggleBarKey XConfig { XMonad.modMask = modMask } = (modMask, xK_b)

myConfig = desktopConfig
    { modMask     = mod4Mask
    , terminal    = "st"
    , borderWidth = 0
    , workspaces  = myWorkspaces
    , layoutHook  = myLayoutHook
    } `additionalKeysP` myKeys

myWorkspaces = ["browse", "code", "etc"]

myLayoutHook = gaps [(U,5), (D,5), (L,5), (R,5)] $ spacingRaw True (Border 5 5 5 5) True (Border 5 5 5 5) True $
               layoutHook def

myKeys =
    [ ("M-<Up>", windows W.focusUp)
    , ("M-<Down>", windows W.focusDown)
    , ("M-<Left>", windows W.focusUp)
    , ("M-<Right>", windows W.focusDown)
    , ("M-x", spawn "rofi -show run")
    ]
    -- ++
    -- [ (otherModMasks ++ "M-" ++ [key], action tag)
    --   | (tag, key)  <- zip myWorkspaces "123"
    --   , (otherModMasks, action) <- [ ("", windows . W.view) -- was W.greedyView
    --                                   , ("S-", windows . W.shift)]
    -- ]
