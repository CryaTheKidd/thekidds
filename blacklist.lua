local blacklistedids = 3120144

    if game:GetService("Players").LocalPlayer.UserId == blacklistedids then 
        game:GetService("Players").LocalPlayer:Kick("BLACKLISTED ACCOUNT") 
elseif game:GetService("Players").LocalPlayer.UserId ~= settings['userid'] then -- checks if the userid ISNT the userid set in settings
        game:GetService("Players").LocalPlayer:Kick("NOT RIGHT USERID") 
    elseif game:GetService("Players").LocalPlayer.UserId == settings['userid'] and game:GetService("Players").LocalPlayer.UserId ~= blacklistedids then -- does sopposite of above
        print("userid correct loading..") 
  end
