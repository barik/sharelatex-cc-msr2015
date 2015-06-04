
Getting the minted syntax highlighting package to work.

In Texlipse, you need to go to Preferences>Texlipse>Builder Settings and click edit for both "Latex program and PDFLatexProgram".  Add --shell-escape to the command arguments line.

Run pip install Pygments (capitialization is important)

![image](https://cloud.githubusercontent.com/assets/6819944/7975558/2eeb496e-0a24-11e5-9c6b-dc0405bbf1c2.png)
