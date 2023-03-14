#include <cstdio>
#include <string>
#include <emscripten/fetch.h>

extern "C" {
  #include <tinytar.h>
}

#include <iostream>
#include <fstream>
#include <filesystem>

std::string abuse_data_archive = "abuse-data.tar.gz";



void printFile(std::string filepath) {

  std::fstream fs;
  fs.open (filepath, std::fstream::in | std::fstream::binary);
  if (fs) {
      fs.close();
      std::cout << "printFile: File '" + filepath + "' exists!"  << std::endl;
  } else {
      std::cout << "printFile: File '" + filepath + "' does NOT exist!"  << std::endl;
  }
  fs.close();

  std::ifstream i(filepath, std::ios::in | std::ios::binary);
  std::cout << i.rdbuf() << std::endl;
  i.close();
}

void list_callback(const char* fileName, unsigned long fileSize, char fileType)
{
    printf("Type: (%d) File: %s Size: %ld\n", fileType, fileName, fileSize);
}


void downloadSucceeded(emscripten_fetch_t *fetch) {
  std::cout << "Finished downloading " << fetch->numBytes << " bytes from URL " << fetch->url << std::endl;
  // The data is now available at fetch->data[0] through fetch->data[fetch->numBytes-1];

  printf("Total bytes: %llu \n", fetch->totalBytes);

  std::ofstream fout;
  fout.open(abuse_data_archive, std::ios::binary | std::ios::out);
  fout.write(fetch->data, fetch->numBytes);
  fout.close();

  emscripten_fetch_close(fetch); // Free data associated with the fetch.

  /* ******************************************************************************************** */

  std::fstream fs;
  fs.open (abuse_data_archive, std::fstream::in | std::fstream::binary);
  if (fs) {
      fs.close();
      std::cout << "File '" + abuse_data_archive + "' exists!"  << std::endl;
  } else {
      std::cout << "File '" + abuse_data_archive + "' does NOT exist!"  << std::endl;
  }
  fs.close();

  /* ******************************************************************************************** */

  untarEx_gz(abuse_data_archive.c_str(), "/", &list_callback);

  printFile("/abuse/abuse.lsp");


}


void downloadFailed(emscripten_fetch_t *fetch) {
  printf("Downloading %s failed, HTTP failure status code: %d.\n", fetch->url, fetch->status);
  emscripten_fetch_close(fetch); // Also free data on failure.
}


void downloadProgress(emscripten_fetch_t *fetch) {


}


int main() {

  // EM_ASM is a macro to call in-line JavaScript code.
  EM_ASM(
    // Make a directory other than '/'
    FS.mkdir('/abuse');
    // Then mount with IDBFS type
    FS.mount(IDBFS, {}, '/abuse');
    // Then sync
    FS.syncfs(true, function (err) {
        // Error
    });
  );


  emscripten_fetch_attr_t attr;
  emscripten_fetch_attr_init(&attr);
  strcpy(attr.requestMethod, "GET");
  attr.attributes = EMSCRIPTEN_FETCH_PERSIST_FILE;
  attr.onprogress = downloadProgress;
  attr.onsuccess = downloadSucceeded;
  attr.onerror = downloadFailed;
  emscripten_fetch(&attr, abuse_data_archive.c_str());

  // Don't forget to sync to make sure you store it to IndexedDB
  EM_ASM(
    FS.syncfs(function (err) {
      // Error
    });
  );

}

