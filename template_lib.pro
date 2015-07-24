TARGET = lib

CONFIG += dll

message("Hello world!")

dll {
    message("Inside dll scope")
}

win32:dll {
    message("Inside win32:dll scope")
}
