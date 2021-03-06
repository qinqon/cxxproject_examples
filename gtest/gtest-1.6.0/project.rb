cxx_configuration do
  libs = ['pthread']
  libs << 'rt' if OS.linux?
  bin_libs(libs)

  source_lib 'gtest',
    :sources => FileList['fused-src/gtest/gtest-all.cc'],
    :includes => ['fused-src'],
    :dependencies => libs

  source_lib 'gtest_main',
    :sources => FileList['fused-src/gtest/gtest_main.cc'],
    :dependencies => ['gtest']

end
