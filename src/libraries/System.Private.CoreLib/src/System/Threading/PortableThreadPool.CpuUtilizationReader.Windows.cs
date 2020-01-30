// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.
// See the LICENSE file in the project root for more information.

using System.Diagnostics;
using System.Runtime.InteropServices;

namespace System.Threading
{
    internal partial class PortableThreadPool
    {
        private struct CpuUtilizationReader
        {
            public long _idleTime;
            public long _kernelTime;
            public long _userTime;

            public int CurrentUtilization
            {
                get
                {
                    if (!Interop.Kernel32.GetSystemTimes(out var idleTime, out var kernelTime, out var userTime))
                    {
                        return 0;
                    }

                    long cpuTotalTime = ((long)userTime - _userTime) + ((long)kernelTime - _kernelTime);
                    long cpuBusyTime = cpuTotalTime - ((long)idleTime - _idleTime);

                    _kernelTime = (long)kernelTime;
                    _userTime = (long)userTime;
                    _idleTime = (long)idleTime;

                    if (cpuTotalTime > 0 && cpuBusyTime > 0)
                    {
                        long reading = cpuBusyTime * 100 / cpuTotalTime;
                        reading = Math.Min(reading, 100);
                        Debug.Assert(0 <= reading);
                        return (int)reading;
                    }
                    return 0;
                }
            }
        }
    }
}
