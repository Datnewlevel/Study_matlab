# MATLAB Exercises - Study MATLAB

This repository contains MATLAB exercises and examples created during the learning process.

## 📁 Directory Structure

### 📝 Main Exercise Files

#### 1. Basic Exercises
- **`Bai_1_phanbaitap.m`** - Calculate expression value with exponential series
  - Input integer n (1 ≤ n ≤ 100)
  - Calculate A = |e^n - e^(n-1)/2² + e^(n-2)/3³ - ... ± e/n^n|
  
- **`Bai_2_phanbaitap.m`** - Process 4x4 matrix
  - Input 4x4 matrix A from keyboard
  - Find the element with maximum value in column 1 and row 4

#### 2. Advanced Exercises (4 Problems)
- **`Cau_1_anh_bai_tap_4_cau.m`** - Process integer array
  - Input n integers (1 ≤ n ≤ 50)
  - Calculate sum of odd numbers
  - Create new array with numbers divisible by 3

- **`Cau_2_anh_bai_tap_4_cau.m`** - Calculate complex expression
  - Calculate S = 1/n² + √2/(n-1)² + ... + √(n-1)/2² + √n
  - Display details of each term

- **`Cau_3_anh_bai_tap_4_cau.m`** - Calculate conditional average
  - Calculate average of numbers divisible by 3 but not divisible by 5

#### 3. Exams and Tests
- **`De_thi_giua_ki.m`** - Midterm exam
  - Plot functions y = -1/e^x and z = -x³
  - Set up axes, legend, title

- **`Cau_hoi_de_thi_cuoi_ki.m`** - Final exam questions
  - Process number array with multiple requirements
  - Calculate sum of even numbers, create array divisible by 5

#### 4. Functions and Utility Programs
- **`quadroot.m`** - Function to solve quadratic equation
  - Calculate roots x1, x2 of equation ax² + bx + c = 0
  
- **`ptbac2.m`** - Quadratic equation solver program
  - Use quadroot() function to solve equation

- **`Tinh_dung_khang.m`** - Calculate capacitive reactance
  - Formula: Zc = 1/(2πfC)
  - Input frequency f(Hz) and capacitance C(F)

#### 5. Workspace Management
- **`saveAll.m`** - Save all variables and figures
  - Automatically create subdirectory
  - Save workspace and all open figures

- **`loadAll.m`** - Load saved workspace
  - Restore variables from .mat file
  - Instructions to reopen figures

- **`startup.m`** - MATLAB startup file
  - Set default working directory

### 📊 Result Directories

#### **Bai_tap_1/**
- `figure1.fig` - Graph results of exercise 1
- `myWorkspace.mat` - Saved workspace

#### **Bai_tap_2/**
- `figure1.fig` - Graph results of exercise 2  
- `myWorkspace.mat` - Saved workspace

#### **Do_thi_2_hamso_y=sinx_z=sin2x/**
- `Figure_1.fig` - Plot of sin(x) and sin(2x) functions
- `allVariables.mat` - Saved variables
- `commandHistory.txt` - Command history

#### **Do_thi_3D_buoi1/**
- `Figure_1.fig` - 3D plot from first lesson
- `allVariables.mat` - 3D workspace
- `commandHistory.txt` - Command history

### 📋 Data Files
- **`Bai_1.mat`** - Saved data from exercise 1
- **`Test.mat`** - Test data file
- **`Luyentap_matlab_theo_sildeC2.mat`** - Practice data following slide C2

### 📖 Documentation
- **`Cach_dung_save&load_trong_matlab.txt`** - Guide for using save/load
  ```
  Step 1: Change folder name to save or load in .m file
  folderName = 'mySavedSession';
  Step 2: Use saveAll or loadAll commands
  ```

## 🚀 Usage

### 1. Run Individual Exercises
```matlab
% Example: run exercise 1
run('Bai_1_phanbaitap.m')

% Or run quadratic equation solver
run('ptbac2.m')
```

### 2. Save and Load Workspace
```matlab
% Save all workspace and figures
saveAll

% Load saved workspace
loadAll
```

### 3. Use Custom Functions
```matlab
% Solve quadratic equation: 2x² + 3x - 1 = 0
[x1, x2] = quadroot(2, 3, -1);
```

## 🎯 Learning Objectives

### Basic Skills
- [x] Input/output from keyboard
- [x] Using for, while loops
- [x] Conditional statements if-else
- [x] Array and matrix processing

### Advanced Skills  
- [x] Create and use custom functions
- [x] 2D and 3D plotting
- [x] Workspace and file management
- [x] String processing and output formatting

### Practical Applications
- [x] Solve mathematical equations
- [x] Electrical engineering calculations
- [x] Data processing and analysis
- [x] Visualization and graphing

## 🛠️ System Requirements
- MATLAB R2016b or later
- Required toolboxes:
  - Signal Processing Toolbox (for some advanced exercises)
  - Symbolic Math Toolbox (if available)

## 📚 References
- MATLAB Documentation
- Lecture slides C2 (referenced in `Luyentap_matlab_theo_sildeC2.mat`)
- Exam papers and practical exercises

## 👨‍💻 Author
This repository was created for MATLAB learning and practice purposes.

---
*Last updated: October, 2025*

## 📝 Notes
- All code includes Vietnamese comments for easy understanding
- .mat files contain saved workspaces for tracking results
- Figures are saved as .fig format for re-editing capability
- UTF-8 encoding is used for Vietnamese comments