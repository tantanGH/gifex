//
//  lzw.h - LZW decode functions header
//
//  2022,2023 tantan
//
//  https://github.com/tantanGH/gifex/
//
//  reference: https://www.petitmonte.com/math_algorithm/lzw_gif.html
//

// a dictionary page
typedef struct {
    unsigned short key;
    unsigned short bit_length;
} LZW_DICT_PAGE;

// a dictionary
typedef struct {
    unsigned short size;        // number of pages
    LZW_DICT_PAGE pages[];
} LZW_DICT;

// max number of pages for a dictionary
#define LZW_DICT_MAX_SIZE 8184

// prototype declarations
int initialize_lzw_dictionary(LZW_DICT* dictionary, unsigned short bit_length);
void show_lzw_dictionary(LZW_DICT* dictionary);
