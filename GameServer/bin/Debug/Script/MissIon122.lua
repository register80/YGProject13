--LUA Generator by YULGANG - 13 - 20170319 
--Ten nhiem vu: (??? ?? 1) --- So buoc: (5)
function MissIon122(UserWorldId,QuestId, StepQuest, StatusQuest)
  local Player = GetPlayer(UserWorldId)
--Cac buoc xu li nhiem vu
  if StepQuest==1 then
      if Player.Player_FLD_LEVEL<84 then 
          SendSysMsg(UserWorldId,"Ban phai dat cap do 84 moi co the nhan nhiem vu !", 9, "He thong")
          SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest)  --Chua du cap du yeu cau
      else
          local QuestLevel=GetQuestLevel(UserWorldId,QuestId)  --lay gia tri QuestLevel la buoc hien tai cua nhan vatt
          if QuestLevel==1 then  --neu dang o buoc 1
              local  bool900000383 = GetQuestItme(UserWorldId, 900000383, 50)  --kiem tra vat pham nhiem vu
              if bool900000383 then --du yeu cau
              AddQuestItme(UserWorldId,900000383,0) --xoa vat pham nhiem vu
 
-- VAT PHAM ROT RA KHI DANH QUAI --
-- ID VAT PHAM: ( 900000383 ) -- SO LUONG: ( 10 ) -- BUOC: ( 2 ) --
-- BAN DO: ( 1001 ) -- X: ( 0 ) -- Y: ( 0 ) --
 
              StatusQuest=2 
              AddQuest(UserWorldId,QuestId, StatusQuest) 
              SendMissionMsg(UserWorldId,QuestId, 11, StatusQuest)  --cho lam buoc tiep theo la 2
              else 
              SendSysMsg(UserWorldId,"Chua dat yeu cau, quay lai sau !", 9, "He thong")
              SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest)  --cho lam buoc tiep theo la 2
              end 
          elseif QuestLevel==2 then
              local  bool900000383 = GetQuestItme(UserWorldId, 900000383, 10)  --kiem tra vat pham nhiem vu
              if bool900000383 then --du yeu cau
                  AddQuestItme(UserWorldId,900000383,0) --xoa vat pham nhiem vu
 
-- VAT PHAM ROT RA KHI DANH QUAI --
-- ID VAT PHAM: ( 900000383 ) -- SO LUONG: ( 10 ) -- BUOC: ( 3 ) --
-- BAN DO: ( 301 ) -- X: ( 0 ) -- Y: ( 0 ) --
 
              StatusQuest=3  --dat buoc tiep theo la: 3
              AddQuest(UserWorldId, QuestId, StatusQuest)  --cho lam buoc tiep theo la: 3
              SendMissionMsg(UserWorldId,QuestId, 11, StatusQuest)  --cho lam buoc tiep theo la: 3
              else 
                  SendSysMsg(UserWorldId,"Chua dat yeu cau, quay lai sau !", 9, "He thong")
                  SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest) 
              end
          elseif QuestLevel==3 then
              local  bool900000383 = GetQuestItme(UserWorldId, 900000383, 10)  --kiem tra vat pham nhiem vu
              if bool900000383 then --du yeu cau
                  AddQuestItme(UserWorldId,900000383,0) --xoa vat pham nhiem vu
 
-- VAT PHAM ROT RA KHI DANH QUAI --
-- ID VAT PHAM: ( 900000383 ) -- SO LUONG: ( 10 ) -- BUOC: ( 4 ) --
-- BAN DO: ( 101 ) -- X: ( 0 ) -- Y: ( 0 ) --
 
              StatusQuest=4  --dat buoc tiep theo la: 4
              AddQuest(UserWorldId, QuestId, StatusQuest)  --cho lam buoc tiep theo la: 4
              SendMissionMsg(UserWorldId,QuestId, 11, StatusQuest)  --cho lam buoc tiep theo la: 4
              else 
                  SendSysMsg(UserWorldId,"Chua dat yeu cau, quay lai sau !", 9, "He thong")
                  SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest) 
              end
          elseif QuestLevel==4 then
              local  bool900000383 = GetQuestItme(UserWorldId, 900000383, 10)  --kiem tra vat pham nhiem vu
              if bool900000383 then --du yeu cau
                  AddQuestItme(UserWorldId,900000383,0) --xoa vat pham nhiem vu
              StatusQuest=5  --dat buoc tiep theo la: 5
              AddQuest(UserWorldId, QuestId, StatusQuest)  --cho lam buoc tiep theo la: 5
              SendMissionMsg(UserWorldId,QuestId, 11, StatusQuest)  --cho lam buoc tiep theo la: 5
              else 
                  SendSysMsg(UserWorldId,"Chua dat yeu cau, quay lai sau !", 9, "He thong")
                  SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest) 
              end
          elseif QuestLevel==5 then
              local controng=GetPackages(UserWorldId,3)  --vi tri con trong
              if controng.Count < 3 then  --neu thung do day 
                SendSysMsg(UserWorldId,"Tui do khong du 3 khong gian trong!", 9, "Chu Y")
                SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest)
                return 
              else  --neu con cho trong
              StatusQuest=6  --dat buoc tiep theo la: 6
              AddQuest(UserWorldId, QuestId, StatusQuest)  --cho lam buoc tiep theo la: 6
              SendMissionMsg(UserWorldId,QuestId, 11, StatusQuest)  --cho lam buoc tiep theo la: 6
              end
           else
           SendMissionMsg(UserWorldId,QuestId, 11, StatusQuest) 
           end
      end
  elseif StepQuest==2 then
      local QuestLevel=GetQuestLevel(UserWorldId,QuestId)
      if Player.Player_FLD_LEVEL<84 then  
          SendSysMsg(UserWorldId,"Ban phai dat cap do 84 moi co the nhan nhiem vu !", 9, "He thong")
          SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest)  --chua dat yeu cau, quay lai sau
      else
         if QuestLevel==6 then 
            SendMissionMsg(UserWorldId,QuestId, 22, StatusQuest) 
         else
 
-- VAT PHAM ROT RA KHI DANH QUAI --
-- ID VAT PHAM: ( 900000383 ) -- SO LUONG: ( 50 ) -- BUOC: ( 1 ) --
-- BAN DO: ( 1001 ) -- X: ( 489 ) -- Y: ( 431 ) --
 
            StatusQuest=1
            AddQuest(UserWorldId,QuestId, StatusQuest)
            SendMissionMsg(UserWorldId,QuestId, 21, StatusQuest)
            SendSysMsg(UserWorldId,"Nhan nhiem vu thanh cong !", 9, "He thong")
         end
      end
  elseif StepQuest==3 then
      SendMissionMsg(UserWorldId,QuestId, 31, StatusQuest)
      SendSysMsg(UserWorldId,"Ban vua tu choi nhiem vu !", 9, "He thong")
  elseif StepQuest==4 then
      SendSysMsg(UserWorldId,"Huy bo nhiem vu thanh cong !", 9, "He thong")
  elseif StepQuest==5 then
      local QuestLevel=GetQuestLevel(UserWorldId,QuestId)
      if QuestLevel==6 then
      local controng=GetPackages(UserWorldId,3)  --vi tri con trong
        if controng.Count < 3 then  --neu thung do day 
          SendSysMsg(UserWorldId,"Tui do khong du 3 khong gian trong!", 9, "Chu Y")
          SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest)
          return 
        else  --neu con cho trong
              --tang thuong
              local weiz800000004=GetPackages(UserWorldId,2)  --vi tri con trong
                  AddItmeProp(UserWorldId,800000004,weiz800000004[0],1,0,0,0,0,0,0,0,0,0)
                  AddItmeProp(UserWorldId,800000004,weiz800000004[1],1,0,0,0,0,0,0,0,0,0)
              --tang thuong
              local weiz800000003=GetPackages(UserWorldId,2)  --vi tri con trong
                  AddItmeProp(UserWorldId,800000003,weiz800000003[0],1,0,0,0,0,0,0,0,0,0)
                  AddItmeProp(UserWorldId,800000003,weiz800000003[1],1,0,0,0,0,0,0,0,0,0)
                  AddExpToCharacter(UserWorldId,18000000) 
        end 
              SendSysMsg(UserWorldId,"Chuc mung ban da hoan thanh nhiem vu !!!",10,"Chu Y") 
      end
      SendMissionMsg(UserWorldId,QuestId, 51, StatusQuest)
  end
end
