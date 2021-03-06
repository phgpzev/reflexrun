require "base/internal/ui/reflexrunHUD/phgphudcore"

rr_HealthBar =
  {
  };

registerWidget("rr_HealthBar");

function rr_HealthBar:draw()

  if not shouldShowHUD() then return end

  local localPl = getLocalPlayer()
  local specPl = getPlayer()

  local barWidth = viewport.width/2
  local barHeight = 20
  local barRight = 0
  local barLeft = barWidth
  local barTop = -barHeight
  local barBottom = 0

  local healthPercentage = specPl.health/200
  local fillWidth = barWidth*healthPercentage

  local barColor
  if specPl.hasMega then barColor = ColorA(PHGPHUD_BLUE_COLOR, 135)
  else barColor = ColorA(PHGPHUD_GREEN_COLOR, 135)
  end
  local strokeColor = ColorA(barColor, 255)

  -- Draw frame
  nvgBeginPath();
  nvgRect(barRight, barBottom, -fillWidth, -barHeight);
  nvgFillColor(barColor);
  nvgFill();
  nvgStrokeColor(strokeColor);
  nvgStroke();
end

function rr_HealthBar:settings()
  consolePerformCommand("ui_show_widget rr_HealthBar")
  consolePerformCommand("ui_set_widget_anchor rr_HealthBar 0 1")
  consolePerformCommand("ui_set_widget_offset rr_HealthBar -1 " .. -PHGPHUD_BARS_HEIGHT)
  consolePerformCommand("ui_set_widget_scale rr_HealthBar 1")
end
