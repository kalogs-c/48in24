//
// This is only a SKELETON file for the 'Reverse String' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const reverseString = (text) => {
  return text != "" ? text.split("").reduce((i, acc) => acc + i) : "";
};
