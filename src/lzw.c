//
//  lzw.c - LZW decode functions
//
//  2022,2023 tantan
//
//  https://github.com/tantanGH/gifex/
//
//  reference: https://www.petitmonte.com/math_algorithm/lzw_gif.html
//

#include <stdio.h>
#include <stddef.h>
#include "lzw.h"

// initialize directionry
int initialize_lzw_dictionary(LZW_DICT* dictionary, unsigned short bit_length) {

    int entry_length = (1 << (bit_length - 1)) + 2;     // 1 digits + clear code + end code
    int current_bit_length = 3;

    // assuming dictionary memory is already allocated
    if (dictionary == NULL) return -1;

    // initialization
    for (int i = 0; i < entry_length; i++) {
        dictionary->pages[i].key = i;
        dictionary->pages[i].bit_length = current_bit_length;
        if (i == 8 || i == 24 || i == 56 || i == 120 || i == 248 ||
            i == 504 || i == 1016 || i == 2040 || i == 4088) {
            current_bit_length++;
        }
    }
    dictionary->size = entry_length;

    return 0;
}

// show dictionary (debug purpose)
void show_lzw_dictionary(LZW_DICT* dictionary) {

    if (dictionary == NULL) return;

    printf("number of pages = %d\n",dictionary->size);

    for (int i = 0; i < dictionary->size; i++) {
        printf("page %d: key=%d, bit=%d\n",i,dictionary->pages[i].key,dictionary->pages[i].bit_length);
    }
}

// search dictionary
int search_lzw_dictionary(LZW_DICT* dictionary, unsigned short key) {

    int page = -1;

    if (dictionary == NULL) return -1;

    for (int i = 0; i < dictionary->size; i++) {
        if (dictionary->pages[i].key == key) {
            page = i;
            break;
        }
    }

    return page;
}

// add a page to dictionary
int add_page_lzw_dictionary(LZW_DICT* dictionary, unsigned short key) {

    LZW_DICT_PAGE page, last_page;
    int current_size;

    if (dictionary == NULL) return -1;
    
    if ((current_size = dictionary->size) >= LZW_DICT_MAX_SIZE) return -1;

    page = dictionary->pages[ current_size ];
    page.key = key;

    last_page = dictionary->pages[ current_size - 1 ];

    if (current_size == 8+1 || current_size == 24+1 || current_size == 56+1 || 
        current_size == 120+1 || current_size == 248+1 || current_size == 504+1 || 
        current_size == 1016+1 || current_size == 2040+1 || current_size == 4088+1) {
        page.bit_length = last_page.bit_length + 1;
    } else {
        page.bit_length = last_page.bit_length;
    }

    dictionary->size = current_size + 1;

    return current_size;
}