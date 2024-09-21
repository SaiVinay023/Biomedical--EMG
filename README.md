EMG-Electromyography
Analyze EMG data through MATLAB.

Content: Matlab code and data to try it.

### Project Name: **BioSignal Analyzer: EMG Data Analysis**

#### Project Description:
The **BioSignal Analyzer** focuses on analyzing Electromyography (EMG) data to understand muscle activation patterns during movements. This project processes raw EMG signals to extract meaningful information about muscle function and coordination, helping in applications such as rehabilitation, sports science, and human-computer interaction.

#### Objectives:
1. **Data Preprocessing**: Clean and filter the EMG signals to remove noise and artifacts.
2. **Signal Analysis**: Analyze muscle activation patterns in relation to movement.
3. **Force Field Evaluation**: Compare muscle activation under different conditions (with and without applied forces).

#### Technical Implementation:

1. **Data Acquisition**:
   - Use EMG sensors to record muscle activity.
   - Store data in MATLAB-compatible formats (e.g., `.mat` files).

2. **Preprocessing**:
   - **Filtering**: Apply a bandpass filter to remove noise and focus on the frequency range of interest (typically 20 Hz to 500 Hz).
   - **Normalization**: Normalize the EMG data to eliminate variability between sessions.

3. **Downsampling**:
   - Perform downsampling after preprocessing to reduce data size and computational load. This step optimizes processing and focuses on key information.

4. **Feature Extraction**:
   - Extract features such as root mean square (RMS), mean frequency, and peak amplitude from the processed EMG signals.

5. **Movement Detection**:
   - Analyze the time delay between muscle activation and recorded movement. Identify the onset of muscle activation in relation to movement initiation.

6. **Force Field Analysis**:
   - Compare EMG signals under controlled force fields and analyze how muscle activation differs. This will involve plotting the EMG data and identifying changes in activation patterns.

7. **Visualization**:
   - Generate visual outputs (graphs and charts) to display findings, such as muscle activation over time and comparisons between different experimental conditions.

8. **MATLAB Implementation**:
   - Use MATLAB for all data processing and analysis tasks, leveraging built-in functions and custom scripts for analysis.

#### Content Structure:
- **EMG_data.mat**: Contains raw EMG signals.
- **extracting_dataset.m**: MATLAB script for data extraction and preprocessing.
- **fig1.jpg, fig2.jpg, ...**: Visualizations of EMG data and analysis results.
- **Assignment2_Group7.pdf**: Document summarizing the findings and methodologies used in the analysis.

This structured approach not only provides insights into muscle activity but also helps in developing applications for movement analysis and rehabilitation strategies.
