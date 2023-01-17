#include "buffer.h"

//
//  ring buffer operations (read 1 byte)
//
unsigned char get_uchar_buffer(unsigned char* buffer_ptr, int* buffer_ofs_ptr, int buffer_size, FILE* fp) {

  int ofs = *buffer_ofs_ptr;
  unsigned char uc;
  
  if (ofs < buffer_size) {
    // we can read 1 byte from the buffer
     uc = buffer_ptr[ofs++];
  } else {
    int read_size = fread(buffer_ptr, 1, buffer_size, fp);
    // we cannot read any bytes from the buffer
    uc = buffer_ptr[0];
    ofs = 1;
  }

  *buffer_ofs_ptr = ofs;

  return uc;
}

//
//  ring buffer operations (read 2 bytes in little endian)
//
unsigned short get_ushort_buffer(unsigned char* buffer_ptr, int* buffer_ofs_ptr, int buffer_size, FILE* fp) {

  int ofs = *buffer_ofs_ptr;
  unsigned short us;

  if (ofs < ( buffer_size - 1)) {
    // we can read 2 bytes from the buffer
    us = buffer_ptr[ofs] + (buffer_ptr[ofs+1] << 8);    // must not use bit or (|) here, not to discard upper bits
    ofs += 2;
  } else if (ofs < buffer_size) {
    // we can read 1 byte from the buffer
    int read_size = fread(buffer_ptr, 1, buffer_size - 1, fp);
    us = buffer_ptr[ofs] + (buffer_ptr[0] << 8);        // must not use bit or (|) here, not to discard upper bits
    ofs = 1;
  } else {
    // we cannot read any bytes from the buffer
    int read_size = fread(buffer_ptr, 1, buffer_size, fp);
    us = buffer_ptr[0] + (buffer_ptr[1] << 8);          // must not use bit or (|) here, not to discard upper bits
    ofs = 2;
  }

  *buffer_ofs_ptr = ofs;

  return us;
}

//
//  ring buffer operations (copy multiple bytes)
//
void memcpy_buffer(unsigned char* dest_ptr, unsigned char* buffer_ptr, int* buffer_ofs_ptr, int buffer_size, int len, FILE* fp) {

  int ofs = *buffer_ofs_ptr;

  if ((ofs + len) <= buffer_size) {
    // we can read all bytes from the buffer
    memcpy(dest_ptr, buffer_ptr + ofs, len);
    ofs += len;
  } else if (ofs >= buffer_size) {
    // we cannot read any bytes from the buffer
    fread(buffer_ptr, 1, buffer_size, fp);
    memcpy(dest_ptr, buffer_ptr, len);
    ofs = len;
  } else {
    // we can read some bytes from the buffer
    int available = buffer_size - ofs;
    memcpy(dest_ptr, buffer_ptr + ofs, available);
    fread(buffer_ptr, 1, buffer_size, fp);
    memcpy(dest_ptr + available, buffer_ptr, len - available);
    ofs = len - available;
  }

  *buffer_ofs_ptr = ofs;
}

//
//  ring buffer operations (just skip bytes)
//
void skip_buffer(unsigned char* buffer_ptr, int* buffer_ofs_ptr, int buffer_size, int len, FILE* fp) {

  int ofs = *buffer_ofs_ptr;

  if ((ofs + len) <= buffer_size) {
    // we can skip all bytes from the buffer
    ofs += len;
  } else if (ofs >= buffer_size) {
    // we cannot skip any bytes from the buffer
    fread(buffer_ptr, 1, buffer_size, fp);
    ofs = len;
  } else {
    // we can skip some bytes from the buffer
    int available = buffer_size - ofs;
    fread(buffer_ptr, 1, buffer_size, fp);
    ofs = len - available;
  }

  *buffer_ofs_ptr = ofs;
}