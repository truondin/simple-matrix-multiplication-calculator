#ifndef MATRIX_MULTIPLICATION_MATRIX_HPP
#define MATRIX_MULTIPLICATION_MATRIX_HPP

#include <iosfwd>
#include <iostream>
#include <cassert>
#include <memory>
#include <vector>
#include <exception>


class Matrix {
private:
    int rows;
    int columns;
    std::vector<std::vector<int>> data;
public:
    Matrix() = default;
    Matrix(int row, int col);
    Matrix(int row, int col, std::vector<std::vector<int>> data);
    Matrix(const Matrix& rhs);
    Matrix& operator=(const Matrix& rhs);
    Matrix(Matrix&& rhs);
    Matrix& operator=(Matrix&& rhs);

    ~Matrix() = default;

    int get_rows() const { return this->rows;}
    int get_columns() const { return this->columns;}
    std::vector<std::vector<int>> get_data() const{return this->data;}


    friend Matrix operator*(const Matrix& a, const Matrix& b);
    friend std::ostream& operator<<(std::ostream &os,const Matrix& matrix);
};

std::ostream& operator<<(std::ostream &os,const Matrix& matrix);
std::vector<std::vector<int>> transpone_data(const std::vector<std::vector<int>> &data);


class matrix_exception : public std::exception {
public:
    explicit matrix_exception(std::string s) : text(std::move(s)) {}
    virtual const char* what() const noexcept override {
        return text.c_str();
    }
protected:
    std::string text;
};


class invalid_multiplication: public matrix_exception{
public:
    using matrix_exception::matrix_exception;
};

#endif //MATRIX_MULTIPLICATION_MATRIX_HPP
