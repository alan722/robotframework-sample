*** Settings ***
Library    OperatingSystem

*** Variables ***
${output_directory} =    Output
${directory_1} =    first directory
${directory_2} =    second directory
${file_1} =    first file.txt
${file_2} =    second file.txt
${file_3} =    third file.txt

*** Keywords ***
Create the Base directory
    Create Directory    ${output_directory}
    Should Exist    ${output_directory}

Create First Directory
    ${directoryPath} =    Join Path    ${output_directory}    ${directory_1}
    Create Directory    ${directoryPath}
    Should Exist    ${directoryPath}

Create Second Directory
    ${directoryPath} =    Join Path    ${output_directory}    ${directory_2}
    Create Directory    ${directoryPath}
    Should Exist    ${directoryPath}

Create First file
    ${filePath} =    Join Path    ${output_directory}    ${directory_1}    ${file_1}
    Create File    ${filePath}
    Should Exist    ${filePath}

Create Second File
    ${filePath} =    Join Path    ${output_directory}    ${directory_2}    ${file_2}
    Create File    ${filePath}
    Should Exist    ${filePath}

Create Third File
    ${filePath} =    Join Path    ${output_directory}    ${directory_2}    ${file_3}
    Create File    ${filePath}
    Should Exist    ${filePath}

Move Third File from Directory 2 to Directory 1
    ${sourcePath} =    Join Path    ${output_directory}    ${directory_2}    ${file_3}
    ${targetPath} =    Join Path    ${output_Directory}    ${directory_1}    ${file_3}
    Move File    ${sourcePath}    ${targetPath}
    Should Exist    ${targetPath}
    Should Not Exist    ${sourcePath}

Copy File 1 from Directory 1 to Directory 2
    ${sourcePath} =    Join Path    ${output_directory}    ${directory_1}    ${file_1}
    ${targetPath} =    Join Path    ${output_directory}    ${directory_2}    ${file_1}
    Copy File    ${sourcePath}    ${targetPath}
    Should Exist    ${sourcePath}
    Should Exist    ${targetPath}
