require "base/internal/ui/reflexrunHUD/phgphudcore"

rr_ArmorBar =
  {
  };

registerWidget("rr_ArmorBar");

function rr_ArmorBar:draw()

  if not shouldShowHUD() then return end

  local localPl = getLocalPlayer()
  local specPl = getPlayer()

  local barWidth = viewport.width/2
  local barHeight = 20
  local barRight = 0
  local barLeft = barWidth
  local barTop = -barHeight
  local barBottom = 0

  local armorPercentage = specPl.armor/200
  local fillWidth = barWidth*armorPercentage

  local barColors = {}
  barColors[0] = ColorA(PHGPHUD_GREEN_COLOR, 135)
  barColors[1] = ColorA(PHGPHUD_YELLOW_COLOR, 135)
  barColors[2] = ColorA(PHGPHUD_RED_COLOR, 135)

  local barColor = barColors[specPl.armorProtection]
  local strokeColor = ColorA(barColor, 255)

  -- Draw frame
  nvgBeginPath();
  nvgRect(barRight, barBottom, fillWidth, -barHeight);
  nvgFillColor(barColor);
  nvgFill();
  nvgStrokeColor(strokeColor);
  nvgStroke();

end

function rr_ArmorBar:settings()
  consolePerformCommand("ui_show_widget rr_ArmorBar")
  consolePerformCommand("ui_set_widget_anchor rr_ArmorBar 0 1")
  consolePerformCommand("ui_set_widget_offset rr_ArmorBar 0 " .. -PHGPHUD_BARS_HEIGHT)
  consolePerformCommand("ui_set_widget_scale rr_ArmorBar 1")
end
