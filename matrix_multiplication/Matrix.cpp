#include "Matrix.hpp"

#include <iosfwd>
#include <iostream>
#include <cassert>
#include <numeric>


/**
 * Matrix class constructor
 * @param row - sets number of rows (i.e. height) of matrix
 * @param col - sets number of columns (i.e. width) of matrix
 */
Matrix::Matrix(int row, int col):
    rows(row),columns(col)
{
    data.resize(row);
    for (int i = 0; i < col; ++i) {
        std::vector<int> vec;
        vec.resize(col);
        data.at(i) = vec;
    }
}

/**
 * Matrix class constructor
 * @param row - sets number of rows (i.e. height) of matrix
 * @param col - sets number of columns (i.e. width) of matrix
 * @param data - sets data for matrix
 */
Matrix::Matrix(int row, int col, std::vector<std::vector<int>> data):
    rows(row),columns(col), data(data)
{}

Matrix::Matrix(const Matrix &rhs):
        rows(rhs.rows),
        columns(rhs.columns),
        data(rhs.data)
{}

Matrix &Matrix::operator=(const Matrix &rhs) {
    rows = rhs.rows;
    columns = rhs.columns;
    data = rhs.data;
    return *this;
}

Matrix::Matrix(Matrix &&rhs):
        rows(rhs.rows),
        columns(rhs.columns),
        data(rhs.data)
{}

Matrix &Matrix::operator=(Matrix &&rhs) {
    rows = rhs.rows;
    columns = rhs.columns;
    data = rhs.data;
    return *this;
}

/**
 * Operator * will multiply 2 matrix and create new matrix with result.
 * Using iterative algorithm, where the data of the second matrix will be transpose
 * (i.e. rows become columns and columns become rows) for using only 2 for loops
 * with method std::inner_product for calculating values of the result matrix.
 * @param a First matrix
 * @param b Second matrix
 * @return Result matrix
 */
Matrix operator*(const Matrix &a, const Matrix &b) {
    if (a.columns == b.rows){
        Matrix result = {a.rows, b.columns};
        std::vector<std::vector<int>> t_data = transpone_data(b.data);

        for (int i = 0; i < result.rows; ++i) {
            std::vector<int> row;
            std::vector<int> a_curr_data = a.data[i];

            row.resize(result.columns);
            for (int j = 0; j < result.columns; ++j) {
                row[j] = std::inner_product(a_curr_data.begin(), a_curr_data.end(), t_data[j].begin(), 0);
            }
            result.data[i] = row;
        }


        return result;
    } throw invalid_multiplication("Columns of first matrix does not equal to rows of second matrix.");
}

/**
 * Printing method for matrix.
 * result example:
 * [ 1 1 ]
 * { 2 2 }
 * @param os - output stream
 * @param matrix - matrix to print
 * @return
 */
std::ostream &operator<<(std::ostream &os, const Matrix &matrix) {
    for (int row = 0; row < matrix.rows; ++row) {
        os << "[";
        for (int col = 0; col < matrix.columns; ++col){
            os << " " << matrix.data.at(row).at(col) << " ";
        }
        os << "]" << std::endl;
    }

    return os;
}

/**
 * transpose data of matrix.
 * Rows become columns and columns become rows.
 * @param data - data of transposing matrix
 * @return returns transposed data
 */
std::vector<std::vector<int>> transpone_data(const std::vector<std::vector<int>> &data){
    std::vector<std::vector<int>> res;
    int t_cols = data[0].size();

    for (int i = 0; i < data.size(); ++i) {
        std::vector<int> vec;
        vec.reserve(t_cols);
for (int j = 0; j < t_cols; ++j) {
            vec.push_back(data[j][i]);
        }
        res.push_back(vec);
    }
    return res;
}





