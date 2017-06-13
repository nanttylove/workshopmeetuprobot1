*** Settings ***
Resource    Workshop_meetup_variables.robot

*** Keywords ***
เข้าเว็บ workshop
    Open Browser    ${WORKSHOP URL}    ${BROWSER}
เข้าเว็บแล้วจะต้องอยู่ที่หน้า Simple examples
    Title Should Be    Simple example
รีหน้าอีกรอบแก้เรื่องรูปค้าง
    Go to    ${WORKSHOP URL}

############################ Select type upload #####################
คลิกปุ่มเลือกรูปแบบ Multiple
    Choose File    xpath=//*[@id="ng-app"]/body/div/div[2]/div[1]/input[1]    /Users/nanttylove/Desktop/workshop09062017/pic/Nant_1.png
คลิกปุ่มเลือกรูปแบบ Single
    Choose File    xpath=//*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]    /Users/nanttylove/Desktop/workshop09062017/pic/Nant_1.png

########################### Wait is visible ##########################
รอจนกว่าจะมองเห็นปุ่ม Upload all
    Wait Until Element Is Visible    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/div/button[1]
รอจนกว่าจะมองเห็นปุ่ม Upload ทีละไฟล์
    Wait Until Element Is Visible    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr/td[5]/button[1]
รอจนกว่าจะมองเห็นปุ่ม Delete ทีละไฟล์
    Wait Until Element Is Visible    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr/td[5]/button[3]

########################## Wait  is not visible #####################
รอจนกว่าจะมองไม่เห็นปุ่ม Upload all
    Wait Until Element Is Not Visible    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/div/button[1]
รอจนกว่าจะมองไม่เห็นปุ่ม Delete all
    Wait Until Element Is Not Visible    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/div/button[3]
รอจนกว่าจะมองไม่เห็นปุ่ม Delete ทีละไฟล์
    Wait Until Element Is Not Visible    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr/td[5]/button[3]

###################### Select button upload cancel delete ############
คลิกปุ่ม Upload all
    Click Button    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/div/button[1]
คลิกปุ่ม Cancel all
    Click Button    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/div/button[2]
คลิกปุ่ม Delete all
    Click Button    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/div/button[3]

คลิกปุ่ม Upload ทีละไฟล์
    Click Button    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr/td[5]/button[1]
คลิกปุ่ม Cancel ทีละไฟล์
    Click Button    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[1]/td[5]/button[2]
คลิกปุ่ม Delete ทีละไฟล์
    Click Button    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[1]/td[5]/button[3]

######################## Check success #############################
เช็คว่าการอัพโหลดผ่านไปได้ด้วยดีไหมนะ
    Wait Until Page Contains Element    xpath=//div/div[@style="width: 100%;"]
เช็คว่าการลบผ่านไปได้ด้วยดีไหมนะ
    Wait Until Page Contains Element    xpath=//div/div[@style="width: 0%;"]
