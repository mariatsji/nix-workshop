{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_part3 (
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

bindir     = "/Users/sjur.millidahl/nix/nix-workshop/part3/.stack-work/install/x86_64-osx-nix/39852a4fcb4c20605b28897452e15dd4e277a9d2875f9e0a9542a3b6d3acd8c5/8.10.7/bin"
libdir     = "/Users/sjur.millidahl/nix/nix-workshop/part3/.stack-work/install/x86_64-osx-nix/39852a4fcb4c20605b28897452e15dd4e277a9d2875f9e0a9542a3b6d3acd8c5/8.10.7/lib/x86_64-osx-ghc-8.10.7/part3-0.1.0.0-9TUARYPJep4FjylCXG0M0l"
dynlibdir  = "/Users/sjur.millidahl/nix/nix-workshop/part3/.stack-work/install/x86_64-osx-nix/39852a4fcb4c20605b28897452e15dd4e277a9d2875f9e0a9542a3b6d3acd8c5/8.10.7/lib/x86_64-osx-ghc-8.10.7"
datadir    = "/Users/sjur.millidahl/nix/nix-workshop/part3/.stack-work/install/x86_64-osx-nix/39852a4fcb4c20605b28897452e15dd4e277a9d2875f9e0a9542a3b6d3acd8c5/8.10.7/share/x86_64-osx-ghc-8.10.7/part3-0.1.0.0"
libexecdir = "/Users/sjur.millidahl/nix/nix-workshop/part3/.stack-work/install/x86_64-osx-nix/39852a4fcb4c20605b28897452e15dd4e277a9d2875f9e0a9542a3b6d3acd8c5/8.10.7/libexec/x86_64-osx-ghc-8.10.7/part3-0.1.0.0"
sysconfdir = "/Users/sjur.millidahl/nix/nix-workshop/part3/.stack-work/install/x86_64-osx-nix/39852a4fcb4c20605b28897452e15dd4e277a9d2875f9e0a9542a3b6d3acd8c5/8.10.7/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "part3_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "part3_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "part3_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "part3_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "part3_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "part3_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
