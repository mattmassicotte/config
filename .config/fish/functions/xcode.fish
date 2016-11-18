function xlipo -d "Use xcrun to invoke lipo"
    xcrun lipo $argv
end

function xdwarfdump -d "Use xcrun to invoke dwarfdump"
    xcrun dwarfdump $argv
end
