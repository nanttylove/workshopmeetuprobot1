*** Settings ***
Resource    /Users/nanttylove/Desktop/workshop09062017/resource/Workshop_meetup_variables.robot
Resource    /Users/nanttylove/Desktop/workshop09062017/resource/Workshop_meetup_keywords.robot

*** Testcases ***
เปิดโครมขึ้นมา
    เข้าเว็บ workshop

เข้าเว็บแล้วจะต้องอยู่ที่หน้า Simple example
    เข้าเว็บแล้วจะต้องอยู่ที่หน้า Simple examples

อัพรูป
    คลิกปุ่มเลือกรูปแบบ Multiple
    คลิกปุ่ม Upload all
    เช็คว่าการอัพโหลดผ่านไปได้ด้วยดีไหมนะ

เลือกลบทีละไฟล์
    คลิกปุ่ม Delete ทีละไฟล์
    รอจนกว่าจะมองไม่เห็นปุ่ม Delete ทีละไฟล์
    
Test Teardown    Close Browser
