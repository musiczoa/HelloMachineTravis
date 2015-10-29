//
// Created by hwa on 2015-10-29.
//

#include "Greeter.h"

std::wstring Greeter::Greet(const std::wstring &message) {
    return message + " " + replyMessage;
}