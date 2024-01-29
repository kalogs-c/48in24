#include "reverse_string.h"

namespace reverse_string {
    std::string reverse_string(std::string text) {
        std::string str = text;
        std::reverse(str.begin(), str.end());
        return str;
    }
}