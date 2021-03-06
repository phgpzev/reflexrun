require "base/internal/ui/reflexcore"


PHGPHUD_TIMER_MAX = 5999.99

--------------------
-- Util functions --
--------------------

function ColorA(color, alpha)
	return Color(color.r, color.g, color.b, alpha);
end

function formatTime(timeS)
	local t = {};

  local time = timeS * 1000

	t.seconds = math.floor(time/1000);
	t.minutes = math.floor(t.seconds / 60);
	t.seconds = t.seconds - t.minutes * 60;
  t.mili = math.floor((time - (t.seconds * 1000) - (t.minutes * 60 * 1000))/10)

  local mins = t.minutes
  if mins < 10 then mins = "0"..mins end
  local secs = t.seconds
  if secs < 10 then secs = "0"..secs end
  local milis = t.mili
  if milis < 10 then milis = "0"..milis end

  local fullText = mins .. ":" .. secs .. ":" .. milis
	return fullText;
end

--------------------
--------------------

--------------------------
-- !! Customize HERE !! --
--------------------------

-- Sound files
PHGPHUD_TIMERSOUNDS_VOLUME = 5; -- Keep this below 8 plz :P

-- Sizes
PHGPHUD_BARS_HEIGHT = 65;
PHGPHUD_OUTLINE_THICKNESS = 1;
PHGPHUD_GAP_SIZE = 3;

-- Colors
PHGPHUD_BLUE_COLOR = Color(0, 85, 150, 255);
PHGPHUD_GREEN_COLOR = Color(25, 135, 0, 255);
PHGPHUD_YELLOW_COLOR = Color(195, 171, 0, 255);
PHGPHUD_RED_COLOR = Color(195, 0, 0, 255);
PHGPHUD_GOLD_COLOR = Color(169, 120, 0, 255);
PHGPHUD_LIGHTGOLD_COLOR = Color(212, 163, 0, 255);

PHGPHUD_GREY_COLOR = Color(25, 25, 25, 255);
PHGPHUD_LIGHTGREY_COLOR = Color(66, 66, 66, 255);
PHGPHUD_BLACK_COLOR = Color(0, 0, 0, 255);
PHGPHUD_WHITE_COLOR = Color(255, 255, 255, 255);

PHGPHUD_TEXT_COLOR = PHGPHUD_WHITE_COLOR;
PHGPHUD_OUTLINE_COLOR = PHGPHUD_BLUE_COLOR;
PHGPHUD_BAR_BACKGROUND_COLOR = PHGPHUD_GREY_COLOR;
PHGPHUD_BACKGROUND_COLOR = ColorA(PHGPHUD_BLACK_COLOR, 185);

-- Fonts
PHGPHUD_FONT_REGULAR = "SourceSansPro-Regular";
PHGPHUD_FONT_BOLD = "SourceSansPro-Bold";

--------------------------
--------------------------

