function MoveQuestMap(UserWorldId, MapId)
	local Msg=string.format("MapId %d",MapId)
	SendSysMsg(UserWorldId,Msg, 9, "MapId: ")
	

	if MapId == 27001 then ---Ȳ���� ����(�Ѻ�)
		MoveMap(UserWorldId,MapId,2,-1,15)
	elseif MapId == 27201 then --������ �����(�Ѻ�)
		MoveMap(UserWorldId,MapId,-7,5,15)
	elseif MapId == 27401 then --�ı��� �۹��� �Ա�(�Ѻ�)
		MoveMap(UserWorldId,MapId,-7,5,15)
	elseif MapId == 27601 then --���ָ��� �޻�(�Ѻ�)
		MoveMap(UserWorldId,MapId,-7,5,15)
	elseif MapId == 27801 then --���� �⽾(�Ѻ�)
		MoveMap(UserWorldId,MapId,-7,5,15)
	elseif MapId == 28001 then --�ȹ̸���(�Ѻ�)
		MoveMap(UserWorldId,MapId,-7,5,15)
	elseif MapId == 28201 then --���� �߽ɺ�(�Ѻ�)
		MoveMap(UserWorldId,MapId,0,0,15)
	elseif MapId == 31001 then --Ȳ���� ����(��ȭ��)
		MoveMap(UserWorldId,MapId,-7,5,15)
	elseif MapId == 31201 then --�ı��� �۹��� �Ա�(��ȭ��)
		MoveMap(UserWorldId,MapId,-7,5,15)
	elseif MapId == 31401 then --���ָ��� �޻�(��ȭ��)
		MoveMap(UserWorldId,MapId,-7,5,15)
	elseif MapId == 31601 then --���� �⽾(��ȭ��)
		MoveMap(UserWorldId,MapId,-7,5,15)
	elseif MapId == 31801 then --���� �߽ɺ�(��ȭ��)
		MoveMap(UserWorldId,MapId,-7,5,15)
	end
	
end