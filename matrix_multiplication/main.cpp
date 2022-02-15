#include "Matrix.hpp"

#include <iostream>
#include <cstring>
#include <fstream>

/**
 * Function for printing help if program gets '--help' argument.
 */
void print_help(){
    std::cout << "This application multiplies 2 matrix:\n";
    std::cout << " 1) Create matrix A.\n";
    std::cout << "\t 1.1) Set number of rows in matrix A - (example) rows of A: 3.\n";
    std::cout << "\t 1.2) Set number of columns in matrix A - (example) columns of A: 3.\n";
    std::cout << "\t 1.3) Set numbers inside of matrix A - continues typing of values on positions (row x column):\n";
    std::cout << "\t      Example (matrix 3x3):\n";
    std::cout << "\t\t 1 2 3\n";
    std::cout << "\t\t 4 5 6\n";
    std::cout << "\t\t 7 8 9\n";
    std::cout << "\t      inputs: 1 2 3 4 5 6\n";

    std::cout << " 2) Create matrix B - same as matrix A.\n";
    std::cout << " 3) Application will multiply matrix as (A * B) and will print the result and creates .txt file with result.";
}

/**
 * Function for creating result file. If file already exists, will rewrite text file.
 */
void generate_result_file(const Matrix& matrix){
    std::ofstream result_file;
    result_file.open ("../matrix_multiplication_result.txt", std::fstream::out);
    result_file << "Result matrix (";
    result_file << matrix.get_rows();
    result_file << "x";
    result_file << matrix.get_columns();
    result_file<<  "): \n\n";

    for (int row = 0; row < matrix.get_rows(); ++row) {
        for (int col = 0; col < matrix.get_columns(); ++col){
            result_file << " " << matrix.get_data().at(row).at(col) << " ";
        }
        result_file << std::endl;
    }

    result_file.close();
}


int main(int argc, char* argv[]){

    if(argc == 2 && strcmp(argv[1], "--help") == 0){
        print_help();
        return 0;
    }else if(argc > 2){
        std::cerr << "Invalid argument";
        return -1;
    }


    int rows_a;
    std::cout << "rows of A:";
    std::cin >> rows_a;
    if (std::cin.fail()){
        std::cerr << "Incorrect input, must be number.";
        return -1;
    }

    int cols_a;
    std::cout << "columns of A:";
    std::cin >> cols_a;
    if (std::cin.fail()){
        std::cerr << "Incorrect input, must be number.";
        return -1;
    }


    std::cout << "matrix A (" << rows_a << "x" << cols_a <<  "):\n";
    std::vector<std::vector<int>> matrix_A;
    for (int i = 0; i < rows_a; ++i) {
        std::vector<int> row;
        for (int j = 0; j < cols_a; ++j) {
            int value;
            std::cin >> value;
            if (std::cin.fail()){
                std::cerr << "Incorrect input, must be number.";
                return -1;
            }
            row.push_back(value);
        }
        matrix_A.push_back(row);
    }


    Matrix a = {rows_a, cols_a, matrix_A};

    int rows_b;
    std::cout << "rows of B:";
    std::cin >> rows_b;
    if (std::cin.fail()){
        std::cerr << "Incorrect input, must be number.";
        return -1;
    }

    int cols_b;
    std::cout << "column of B:";
    std::cin >> cols_b;
    if (std::cin.fail()){
        std::cerr << "Incorrect input, must be number.";
        return -1;
    }

    std::cout << "matrix B (" << rows_b << "x" << cols_b <<  "):\n";
    std::vector<std::vector<int>> matrix_B;
    for (int i = 0; i < rows_b; ++i) {
        std::vector<int> row;
        for (int j = 0; j < cols_b; ++j) {
            int value;
            std::cin >> value;
            if (std::cin.fail()){
                std::cerr << "Incorrect input, must be number.";
                return -1;
            }
            row.push_back(value);
        }
        matrix_B.push_back(row);
    }

    Matrix b = {rows_b, cols_b, matrix_B};

    try {
        Matrix c = a * b;

        std::cout << "result of A x B:\n";
        std::cout<< c;
        generate_result_file(c);

        return 0;
    }catch (invalid_multiplication e){
        std::cerr << "! Multiplication failed: ";
        std::cerr << e.what();
        return -1;
    }
}



