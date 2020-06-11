include(rootpath .. "tas.lua")

controller = {}
controllerAttached = false
while true do
    hid_ScanInput()
    if hid_KeyboardDown(0x2e) and not controllerAttached then --equals
        controller = hiddbg_AttachController()
        controllerAttached = true
    end
    if hid_KeyboardDown(0x2d) and controllerAttached then --minus
        hiddbg_DetachController(controller)
        controllerAttached = false
    end
    if hid_KeyboardDown(0x3a) and controllerAttached then
        runTas("script1.txt", controller)
    end
    if hid_KeyboardDown(0x3b) and controllerAttached then
        runTas("script2.txt", controller)
    end
    if hid_KeyboardDown(0x3c) and controllerAttached then
        runTas("script3.txt", controller)
    end
    if hid_KeyboardDown(0x3d) and controllerAttached then
        runTas("script4.txt", controller)
    end
    if hid_KeyboardDown(0x3e) and controllerAttached then
        runTas("script5.txt", controller)
    end
    if hid_KeyboardDown(0x3f) and controllerAttached then
        runTas("script6.txt", controller)
    end
    if hid_KeyboardDown(0x40) and controllerAttached then
        runTas("script7.txt", controller)
    end
    if hid_KeyboardDown(0x41) and controllerAttached then
        runTas("script8.txt", controller)
    end
    if hid_KeyboardDown(0x42) and controllerAttached then
        runTas("script9.txt", controller)
    end
    if hid_KeyboardDown(0x43) and controllerAttached then
        runTas("script10.txt", controller)
    end
    if hid_KeyboardDown(0x44) and controllerAttached then
        runTas("script11.txt", controller)
    end
    if hid_KeyboardDown(0x45) and controllerAttached then
        runTas("script12.txt", controller)
    end
    svc_SleepThread(6250000)
end