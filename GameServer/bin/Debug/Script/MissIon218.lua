--LUA Generator by YULGANG - 13 - 20170319 
--Ten nhiem vu: (??? ???? ????) --- So buoc: (1)
function MissIon218(UserWorldId,QuestId, StepQuest, StatusQuest)
  local Player = GetPlayer(UserWorldId)
--Cac buoc xu li nhiem vu
  if StepQuest==1 then
      if Player.Player_FLD_LEVEL<0 then 
          SendSysMsg(UserWorldId,"Ban phai dat cap do 0 moi co the nhan nhiem vu !", 9, "He thong")
          SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest)  --Chua du cap du yeu cau
      else
          local QuestLevel=GetQuestLevel(UserWorldId,QuestId)  --lay gia tri QuestLevel la buoc hien tai cua nhan vatt
          if QuestLevel==1 then  --neu dang o buoc 1
              local controng=GetPackages(UserWorldId,4)  --vi tri con trong
              if controng.Count < 4 then  --neu thung do day 
                SendSysMsg(UserWorldId,"Tui do khong du 4 khong gian trong!", 9, "Chu Y")
                SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest)
                return 
              else  --neu con cho trong
              local  bool1000000448 = GetQuestItme(UserWorldId, 1000000448, 1)  --kiem tra vat pham nhiem vu
              if bool1000000448 then --du yeu cau
                  AddQuestItme(UserWorldId,1000000448,0) --xoa item nhiem vu
                  StatusQuest=2  --dat buoc tiep theo la 2
                  AddQuest(UserWorldId,QuestId, StatusQuest)  --cho lam buoc tiep theo la: 2
                  SendMissionMsg(UserWorldId,QuestId, 11, StatusQuest)  --cho lam buoc tiep theo la: 2
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
      if Player.Player_FLD_LEVEL<0 then  
          SendSysMsg(UserWorldId,"Ban phai dat cap do 0 moi co the nhan nhiem vu !", 9, "He thong")
          SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest)  --chua dat yeu cau, quay lai sau
      else
         if QuestLevel==2 then 
            SendMissionMsg(UserWorldId,QuestId, 22, StatusQuest) 
         else
                  AddQuestItme(UserWorldId,1000000448,1) --them vat pham nhiem vu cho buoc tiep theo
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
      if QuestLevel==2 then
      local controng=GetPackages(UserWorldId,4)  --vi tri con trong
        if controng.Count < 4 then  --neu thung do day 
          SendSysMsg(UserWorldId,"Tui do khong du 4 khong gian trong!", 9, "Chu Y")
          SendMissionMsg(UserWorldId,QuestId, 12, StatusQuest)
          return 
        else  --neu con cho trong
              --tang thuong
              local weiz1000000779=GetPackage(UserWorldId)  --vi tri con trong
                  AddItme(UserWorldId,1000000779,weiz1000000779,1) 
              --tang thuong
              local weiz1000000791=GetPackage(UserWorldId)  --vi tri con trong
                  AddItme(UserWorldId,1000000791,weiz1000000791,4) 
              --tang thuong
              local weiz1000000790=GetPackage(UserWorldId)  --vi tri con trong
                  AddItme(UserWorldId,1000000790,weiz1000000790,4) 
              --tang thuong
              local weiz1000000784=GetPackage(UserWorldId)  --vi tri con trong
                  AddItme(UserWorldId,1000000784,weiz1000000784,5) 
        end 
              SendSysMsg(UserWorldId,"Chuc mung ban da hoan thanh nhiem vu !!!",10,"Chu Y") 
      end
      SendMissionMsg(UserWorldId,QuestId, 51, StatusQuest)
  end
end