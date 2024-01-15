# encoding

URL Encoding (Percent Encoding):

Encode: echo -n "Hello, World!" | jq -s -R -r @uri
Decode: echo -n "Hello%2C%20World%21" | jq -s -R -r @uri
HTML Entity Encoding:

Encode: echo -n "Hello, World!" | jq -s -R -r @html
Decode: echo -n "Hello, World&#33;" | jq -s -R -r @html
Hexadecimal Encoding:

Encode: echo -n "Hello, World!" | xxd -p
Decode: echo -n "48656c6c6f2c20576f726c6421" | xxd -r -p
Base32 Encoding:

Encode: echo -n "Hello, World!" | base32
Decode: echo -n "JBSWY3DPEHPK3PXP" | base32 -d
Base58 Encoding:

Encode: echo -n "Hello, World!" | base58
Decode: There is no standard decoding tool for Base58 in most Unix-like systems, but you can use specialized libraries or tools.
