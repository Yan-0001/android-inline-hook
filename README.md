# **shadowhook**

![](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat)
![](https://img.shields.io/badge/release-2.0.0-red.svg?style=flat)
![](https://img.shields.io/badge/Android-4.1%20--%2016-blue.svg?style=flat)
![](https://img.shields.io/badge/arch-arm64--v8a-blue.svg?style=flat)

**shadowhook is an Android inline hook library.** Its goals are:

- **Stability** - Can be stably used in production apps.
- **Compatibility** - Always maintains backward compatibility of API and ABI in new versions.
- **Performance** - Continuously reduces API call overhead and additional runtime overhead introduced by hooks.
- **Functionality** - Besides basic hook functionality, provides general solutions for "hook-related" issues.

> If you need an Android PLT hook library, try [ByteHook](https://github.com/bytedance/bhook).


## Features

- Supports arm64-v8a.
- Supports Android `4.1` - `16` (API level `16` - `36`).
- Supports hook and intercept.
- Supports specifying hook and intercept target locations via "address" or "library name + function name".
- Automatically completes hook and intercept for "newly loaded ELFs", with optional callbacks after execution.
- Automatically prevents recursive circular calls between proxy functions.
- Supports hook and intercept operation recording, which can be exported at any time.
- Supports registering callbacks before and after linker calls `.init` + `.init_array` and `.fini` + `.fini_array` of newly loaded ELFs.
- Supports bypassing linker namespace restrictions to query symbol addresses in `.dynsym` and `.symtab` of all ELFs in the process.
- Compatible with CFI unwind and FP unwind in hook proxy functions and interceptor functions.
- Licensed under the MIT license.


## Documentation

[shadowhook Manual](shadowhook/jni/include/shadowhook.h)

## Feedback

## Feedback

* [GitHub Issues](https://github.com/bytedance/android-inline-hook/issues)
* [GitHub Discussions](https://github.com/bytedance/android-inline-hook/discussions)


## Contributing

* [Code of Conduct](CODE_OF_CONDUCT.md)
* [Contributing Guide](CONTRIBUTING.md)
* [Reporting Security vulnerabilities](SECURITY.md)


## License

ShadowHook is licensed under the [MIT License](LICENSE).

ShadowHook uses the following third-party source code or libraries:

* [queue.h](shadowhook/jni/third_party/bsd/queue.h)  
BSD 3-Clause License  
Copyright (c) 1991, 1993 The Regents of the University of California.
* [tree.h](shadowhook/jni/third_party/bsd/tree.h)  
BSD 2-Clause License  
Copyright (c) 2002 Niels Provos <provos@citi.umich.edu>
* [linux-syscall-support](https://chromium.googlesource.com/linux-syscall-support/)  
BSD 3-Clause License  
Copyright (c) 2005-2011 Google Inc.
* [xDL](https://github.com/hexhacking/xDL)  
MIT License  
Copyright (c) 2020-2025 HexHacking Team
