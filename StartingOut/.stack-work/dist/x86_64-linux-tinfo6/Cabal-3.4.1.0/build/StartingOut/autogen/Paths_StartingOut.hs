{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -Wno-missing-safe-haskell-mode #-}
module Paths_StartingOut (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/amilton/assignments/LearningHaskell/StartingOut/.stack-work/install/x86_64-linux-tinfo6/36d6b7f12d34f19f2971210f29fe7e13dae0c4e75e978ea497c2a29a47598231/9.0.2/bin"
libdir     = "/home/amilton/assignments/LearningHaskell/StartingOut/.stack-work/install/x86_64-linux-tinfo6/36d6b7f12d34f19f2971210f29fe7e13dae0c4e75e978ea497c2a29a47598231/9.0.2/lib/x86_64-linux-ghc-9.0.2/StartingOut-0.1.0.0-GMgM43nWhVJBWaMxxlLPw-StartingOut"
dynlibdir  = "/home/amilton/assignments/LearningHaskell/StartingOut/.stack-work/install/x86_64-linux-tinfo6/36d6b7f12d34f19f2971210f29fe7e13dae0c4e75e978ea497c2a29a47598231/9.0.2/lib/x86_64-linux-ghc-9.0.2"
datadir    = "/home/amilton/assignments/LearningHaskell/StartingOut/.stack-work/install/x86_64-linux-tinfo6/36d6b7f12d34f19f2971210f29fe7e13dae0c4e75e978ea497c2a29a47598231/9.0.2/share/x86_64-linux-ghc-9.0.2/StartingOut-0.1.0.0"
libexecdir = "/home/amilton/assignments/LearningHaskell/StartingOut/.stack-work/install/x86_64-linux-tinfo6/36d6b7f12d34f19f2971210f29fe7e13dae0c4e75e978ea497c2a29a47598231/9.0.2/libexec/x86_64-linux-ghc-9.0.2/StartingOut-0.1.0.0"
sysconfdir = "/home/amilton/assignments/LearningHaskell/StartingOut/.stack-work/install/x86_64-linux-tinfo6/36d6b7f12d34f19f2971210f29fe7e13dae0c4e75e978ea497c2a29a47598231/9.0.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "StartingOut_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "StartingOut_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "StartingOut_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "StartingOut_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "StartingOut_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "StartingOut_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
