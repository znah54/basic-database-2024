# 파이썬 DB 연동 프로그램

import sys
from PyQt5 import uic
from PyQt5.QtCore import Qt
from PyQt5.QtGui import QCloseEvent
from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
import webbrowser

from PyQt5.QtWidgets import QWidget
import pymssql as db

class qtApp(QMainWindow):
    def __init__(self) -> None:
        super().__init__()
        uic.loadUi('./day05/MadangBook.ui', self)
        self.initUI()

    def initUI(self) -> None:
        # Button 4개에 대해서 사용등록
        self.btnNew.clicked.connect(self.btnNewClicked)             # 신규버튼 
        self.btnSave.clicked.connect(self.btnSaveClicked)           # 저장버튼
        self.btnDel.clicked.connect(self.btnDelClicked)             # 삭제버튼
        self.btnReload.clicked.connect(self.btnReloadClicked)       # 조회버튼
        self.tblBooks.itemSelectionChanged.connect(self.tblBooksSelected) # 테이블위젯 결과 클릭시 발생
        self.show()
    
    def btnNewClicked(self) : # 신규버튼 클릭
        #QMessageBox.about(self,'버튼','신규버튼이 클릭됨')
        conn = db.connect(server='127.0.0.1',user='sa',password='mssql_p@ss',database='Madang',charset='EUC-KR')
        cursor = conn.cursor(as_dict = True)

        cursor.execute('SELECT * FROM Book')
        for row in cursor:
            print(f'bookid={row["bookid"]},bookname={row["bookname"]},publisher={row["publisher"]},price={row["price"]}')

        conn.close()

    def btnSaveClicked(self) : # 저장버튼 클릭
        QMessageBox.about(self,'버튼','저장버튼이 클릭됨')    

    def btnDelClicked(self) : # 삭제버튼 클릭
        QMessageBox.about(self,'버튼','삭제버튼이 클릭됨')
    
    def btnReloadClicked(self) : # 조회버튼 클릭
        QMessageBox.about(self,'버튼','조회버튼이 클릭됨')

    def tblBooksSelected(self):
        QMessageBox.about(self, '테이블위젯', '내용 변경')

    # 원래 PyQt 있는 함수 closeEvent를 재정의(Override)
    def closeEvent(self, event) -> None:
        re = QMessageBox.question(self,'종료여부','종료하시겠습니까?',QMessageBox.Yes|QMessageBox.NO)
        if re == QMessageBox.Yes:
            event.accpet()
        else:
            event.ignore()

if __name__ =='__main__':
    app = QApplication(sys.argv)
    inst = qtApp()
    sys.exit(app.exec_())

