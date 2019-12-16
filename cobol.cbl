               IDENTIFICATION DIVISION. 
               PROGRAM-ID. CIRCUMFERENCE.
               DATA DIVISION.
               WORKING-STORAGE SECTION. 
               01 WS-CONSTANTS.
                   05 WS-PI PIC 9v99 VALUE 3.14.
               01 WS-CIRCLE.
                   05 WS-RADIUS PIC 999V99 VALUE ZEROES.
                   05 WS-AREA PIC 9999V99 VALUE ZEROES.
                   05 WS-CIRCUMFERENCE PIC 99999V99 VALUE ZEROES.
               01 WS-DISPLAY.
                   05 WS-DISPLAY-CIRCUMFERENCE PIC ZZ99.99.
                   05 WS-DISPLAY-AREA PIC ZZ99.99.

               PROCEDURE DIVISION.
               0000-PROCESS-RECORDS.

        DISPLAY "Enter the Radius"
        ACCEPT WS-RADIUS

        COMPUTE WS-CIRCUMFERENCE = 2 * WS-PI * WS-RADIUS
        MOVE WS-CIRCUMFERENCE TO WS-DISPLAY-CIRCUMFERENCE

        COMPUTE WS-AREA = WS-PI * WS-RADIUS * WS-RADIUS
        MOVE WS-AREA TO WS-DISPLAY-AREA

        DISPLAY "The Circumference is " , WS-DISPLAY-CIRCUMFERENCE
        DISPLAY "The Area is " , WS-DISPLAY-AREA

        STOP RUN.

        END PROGRAM CIRCUMFERENCE.
