%module HelloMachine
%{
#include "./Greeter.h"
%}

%pragma(java) jniclasscode=%{
    static {
        try {
            System.loadLibrary("HelloMachine");
        } catch (UnsatisfiedLinkError error) {
            error.printStackTrace();
        }
    }
%}

%include "std_string.i"

%include "std_wstring.i"
%apply const std::wstring & {std::wstring &};

%include "./Greeter.h"
