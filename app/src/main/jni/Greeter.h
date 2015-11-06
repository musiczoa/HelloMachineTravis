//
// Created by hwa on 2015-10-29.
//

#ifndef HELLO_MACHINE_GREETER_H
#define HELLO_MACHINE_GREETER_H

#include <string>

class Greeter {
public:
    std::wstring Greet(const std::wstring& message);

private:
    std::wstring replyMessage = std::wstring(L"반가워");
};


#endif //HELLO_MACHINE_GREETER_H
