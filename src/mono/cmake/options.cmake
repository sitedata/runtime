option (ENABLE_NETCORE "Enables the support for .NET Core Features in the MonoVM")

option (DISABLE_PORTABILITY "Disables the IO portability layer")
option (DISABLE_AOT "Disable AOT Compiler")
option (DISABLE_PROFILER "Disable default profiler support")
option (DISABLE_DECIMAL "Disable System.Decimal support")
option (DISABLE_PINVOKE "Disable P/Invoke support")
option (DISABLE_DEBUG "Disable runtime debugging support")
option (DISABLE_REFLECTION_EMIT "Disable reflection emit support")
option (DISABLE_REFLECTION_EMIT_SAVE "Disable assembly saving support in reflection emit")
option (DISABLE_LARGE_CODE "Disable support for huge assemblies")
option (DISABLE_LOGGING "Disable support debug logging")
option (DISABLE_COM "Disable COM support")
option (DISABLE_SSA "Disable advanced SSA JIT optimizations")
option (DISABLE_GENERICS "Disable generics support")
option (DISABLE_SHADOW_COPY "Disable Shadow Copy for AppDomains")
option (DISABLE_ATTACH "Disable agent attach support")
option (DISABLE_VERIFIER "Disables the verifier")
option (DISABLE_JIT "Disable the JIT, only full-aot mode or interpreter will be supported by the runtime.")
option (DISABLE_INTERPRETER "Disable the interpreter.")
option (DISABLE_SIMD "Disable SIMD intrinsics related optimizations.")
option (DISABLE_DEBUGGER_AGENT "Disable Soft Debugger Agent.")
option (DISABLE_PERFCOUNTERS "Disable Performance Counters.")
option (DISABLE_NORMALIZATION "Disable String normalization support.")
option (DISABLE_DESKTOP_LOADER "Disable desktop assembly loader semantics.")
option (DISABLE_SHARED_PERFCOUNTERS "Disable shared perfcounters.")
option (DISABLE_APPDOMAINS "Disable support for multiple appdomains.")
option (DISABLE_REMOTING "Disable remoting support (This disables type proxies and make com non-functional)")
option (DISABLE_SECURITY "Disable CAS/CoreCLR security")
option (DISABLE_LLDB "Disable support code for the LLDB plugin.")
option (DISABLE_MDB "Disable support for .mdb symbol files.")
option (DISABLE_ASSERT_MESSAGES "Disable assertion messages.")
option (DISABLE_CLEANUP "Disable runtime cleanup.")
option (DISABLE_SGEN_MAJOR_MARKSWEEP_CONC "Disable concurrent gc support in SGEN.")
option (DISABLE_SGEN_SPLIT_NURSERY "Disable minor=split support in SGEN.")
option (DISABLE_SGEN_GC_BRIDGE "Disable gc bridge support in SGEN.")
option (DISABLE_SGEN_DEBUG_HELPERS "Disable debug helpers in SGEN.")
option (DISABLE_SOCKETS "Disable sockets")
option (DISABLE_GAC "Disable GAC")
option (DISABLE_DLLMAP "Disables use of DllMaps in MonoVM")
option (DISABLE_THREADS "Disable Threads")

