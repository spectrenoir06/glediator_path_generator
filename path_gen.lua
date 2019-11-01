#!/usr/bin/env luajit

local pixel = 0
local uni = 0

print([[
#GLEDIATOR Patch File
#Fri Oct 18 23:08:11 CEST 2019
Patch_Num_Unis=4
Patch_Matrix_Size_X=64
Patch_Matrix_Size_Y=8
Patch_Uni_ID_0_IP1=192
Patch_Uni_ID_0_IP2=168
Patch_Uni_ID_0_IP3=1
Patch_Uni_ID_0_IP4=118
Patch_Uni_ID_0_Num_Ch=512
Patch_Uni_ID_0_Net_Nr=0
Patch_Uni_ID_0_Sub_Net_Nr=0
Patch_Uni_ID_0_Uni_Nr=0
Patch_Uni_ID_1_IP1=192
Patch_Uni_ID_1_IP2=168
Patch_Uni_ID_1_IP3=1
Patch_Uni_ID_1_IP4=118
Patch_Uni_ID_1_Num_Ch=512
Patch_Uni_ID_1_Net_Nr=0
Patch_Uni_ID_1_Sub_Net_Nr=0
Patch_Uni_ID_1_Uni_Nr=1
Patch_Uni_ID_2_IP1=192
Patch_Uni_ID_2_IP2=168
Patch_Uni_ID_2_IP3=1
Patch_Uni_ID_2_IP4=118
Patch_Uni_ID_2_Num_Ch=512
Patch_Uni_ID_2_Net_Nr=0
Patch_Uni_ID_2_Sub_Net_Nr=0
Patch_Uni_ID_2_Uni_Nr=2
Patch_Uni_ID_3_IP1=192
Patch_Uni_ID_3_IP2=168
Patch_Uni_ID_3_IP3=1
Patch_Uni_ID_3_IP4=118
Patch_Uni_ID_3_Num_Ch=512
Patch_Uni_ID_3_Net_Nr=0
Patch_Uni_ID_3_Sub_Net_Nr=0
Patch_Uni_ID_3_Uni_Nr=3]])

for x=64-1,0,-1 do
	lx = x + 32 + 15
	lx = lx % 64
	if (x % 2 == 0) then
		for y=0,8-1 do
			print("Patch_Pixel_X_"..lx.."_Y_"..y.."_Uni_ID="..uni)
			print("Patch_Pixel_X_"..lx.."_Y_"..y.."_Ch_R="..pixel*3)
			print("Patch_Pixel_X_"..lx.."_Y_"..y.."_Ch_G="..pixel*3+1)
			print("Patch_Pixel_X_"..lx.."_Y_"..y.."_Ch_B="..pixel*3+2)
			pixel = pixel + 1
			if pixel == 170 then
				pixel = 0
				uni = uni + 1
			end
		end
	else
		for y=8-1,0,-1 do
			print("Patch_Pixel_X_"..lx.."_Y_"..y.."_Uni_ID="..uni)
			print("Patch_Pixel_X_"..lx.."_Y_"..y.."_Ch_R="..pixel*3)
			print("Patch_Pixel_X_"..lx.."_Y_"..y.."_Ch_G="..pixel*3+1)
			print("Patch_Pixel_X_"..lx.."_Y_"..y.."_Ch_B="..pixel*3+2)
			pixel = pixel + 1
			if pixel == 170 then
				pixel = 0
				uni = uni + 1
			end
		end
	end
end
