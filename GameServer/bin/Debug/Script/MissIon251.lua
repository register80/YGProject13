--LUA Generator by YULGANG - 13 - 20170319 
--Ten nhiem vu: (?? ?? 2) --- So buoc: (3)
function MissIon251(UserWorldId,QuestId, StepQuest, StatusQuest)
  local Player = GetPlayer(UserWorldId)
--Cac buoc xu li nhiem vu
  if StepQuest==1 then
      if Player.Player_FLD_LEVEL<122 then 
          SendSysMsg(UserWorldId,"Ban phai dat cap do 122 moi co the nhan nhiem vu !", 9, "He thong")
          SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest)  --Chua du cap du yeu cau
      else
          local QuestLevel=GetQuestLevel(UserWorldId,QuestId)  --lay gia tri QuestLevel la buoc hien tai cua nhan vatt
          if QuestLevel==1 then  --neu dang o buoc 1
              local  bool900000556 = GetQuestItme(UserWorldId, 900000556, 50)  --kiem tra vat pham nhiem vu
              if bool900000556 then --du yeu cau
              AddQuestItme(UserWorldId,900000556,0) --xoa vat pham nhiem vu
              StatusQuest=2 
              AddQuest(UserWorldId,QuestId, StatusQuest) 
              SendMissionMsg(UserWorldId,QuestId, 11, StatusQuest)  --cho lam buoc tiep theo la 2
              else 
              SendSysMsg(UserWorldId,"Chua dat yeu cau, quay lai sau !", 9, "He thong")
              SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest)  --cho lam buoc tiep theo la 2
              end 
          elseif QuestLevel==2 then
 
-- VAT PHAM ROT RA KHI DANH QUAI --
-- ID VAT PHAM: ( 900000557 ) -- SO LUONG: ( 50 ) -- BUOC: ( 3 ) --
-- BAN DO: ( 25100 ) -- X: ( 228 ) -- Y: ( 284 ) --
 
              StatusQuest=3  --dat buoc tiep theo la: 3
              AddQuest(UserWorldId, QuestId, StatusQuest)  --cho lam buoc tiep theo la: 3
              SendMissionMsg(UserWorldId,QuestId, 11, StatusQuest)  --cho lam buoc tiep theo la: 3
          elseif QuestLevel==3 then
              local controng=GetPackages(UserWorldId,3)  --vi tri con trong
              if controng.Count < 3 then  --neu thung do day 
                SendSysMsg(UserWorldId,"Tui do khong du 3 khong gian trong!", 9, "Chu Y")
                SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest)
                return 
              else  --neu con cho trong
              local  bool900000557 = GetQuestItme(UserWorldId, 900000557, 50)  --kiem tra vat pham nhiem vu
              if bool900000557 then --du yeu cau
                  AddQuestItme(UserWorldId,900000557,0) --xoa vat pham nhiem vu
              StatusQuest=4  --dat buoc tiep theo la: 4
              AddQuest(UserWorldId, QuestId, StatusQuest)  --cho lam buoc tiep theo la: 4
              SendMissionMsg(UserWorldId,QuestId, 11, StatusQuest)  --cho lam buoc tiep theo la: 4
              else 
                  SendSysMsg(UserWorldId,"Chua dat yeu cau, quay lai sau !", 9, "He thong")
                  SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest) 
              end
              end
           else
           SendMissionMsg(UserWorldId,QuestId, 11, StatusQuest) 
           end
      end
  elseif StepQuest==2 then
      local QuestLevel=GetQuestLevel(UserWorldId,QuestId)
      if Player.Player_FLD_LEVEL<122 then  
          SendSysMsg(UserWorldId,"Ban phai dat cap do 122 moi co the nhan nhiem vu !", 9, "He thong")
          SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest)  --chua dat yeu cau, quay lai sau
      else
         if QuestLevel==4 then 
            SendMissionMsg(UserWorldId,QuestId, 22, StatusQuest) 
         else
 
-- VAT PHAM ROT RA KHI DANH QUAI --
-- ID VAT PHAM: ( 900000556 ) -- SO LUONG: ( 50 ) -- BUOC: ( 1 ) --
-- BAN DO: ( 25100 ) -- X: ( 127 ) -- Y: ( 43 ) --
 
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
      if QuestLevel==4 then
      local controng=GetPackages(UserWorldId,3)  --vi tri con trong
        if controng.Count < 3 then  --neu thung do day 
          SendSysMsg(UserWorldId,"Tui do khong du 3 khong gian trong!", 9, "Chu Y")
          SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest)
          return 
        else  --neu con cho trong
              AddQuestItme(UserWorldId,900000591,1) --them vat pham cho nhiem vu khac
              --tang thuong
              local weiz1008000266=GetPackage(UserWorldId)  --vi tri con trong
                  AddItme(UserWorldId,1008000266,weiz1008000266,1) 
                  AddExpToCharacter(UserWorldId,150000000) 
        end 
              SendSysMsg(UserWorldId,"Chuc mung ban da hoan thanh nhiem vu !!!",10,"Chu Y") 
      end
      SendMissionMsg(UserWorldId,QuestId, 51, StatusQuest)
  end
end
