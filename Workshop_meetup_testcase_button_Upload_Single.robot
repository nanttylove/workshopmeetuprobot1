*** Settings ***
Resource    /Users/nanttylove/Desktop/workshop09062017/resource/Workshop_meetup_variables.robot
Resource    /Users/nanttylove/Desktop/workshop09062017/resource/Workshop_meetup_keywords.robot

*** Testcases ***
เปิดโครมขึ้นมา
    เข้าเว็บ workshop

เข้าเว็บแล้วจะต้องอยู่ที่หน้า Simple example
    เข้าเว็บแล้วจะต้องอยู่ที่หน้า Simple examples

เลือกอัพแบบ Single upload ทีละไฟล์
    คลิกปุ่มเลือกรูปแบบ Single
    คลิกปุ่ม Upload ทีละไฟล์
    เช็คว่าการอัพโหลดผ่านไปได้ด้วยดีไหมนะ

Test Teardown    Close Browser
