CIRCUITPY_CREATOR_ID =  0x10151015
CIRCUITPY_CREATION_ID = 0x00320008

IDF_TARGET = esp32

CIRCUITPY_ESP_FLASH_MODE = qio
CIRCUITPY_ESP_FLASH_FREQ = 80m
CIRCUITPY_ESP_FLASH_SIZE = 16MB

CIRCUITPY_ESP_PSRAM_SIZE = 8MB
CIRCUITPY_ESP_PSRAM_MODE = qio
CIRCUITPY_ESP_PSRAM_FREQ = 80m

M5STACK_CORE2_5V_OUTPUT_ENABLE_DEFAULT = 1

CFLAGS += -DM5STACK_CORE2_5V_OUTPUT_ENABLE_DEFAULT=$(M5STACK_CORE2_5V_OUTPUT_ENABLE_DEFAULT)

SRC_C += pmic/axp192/axp192.c

# Include these Python libraries in firmware.
FROZEN_MPY_DIRS += $(TOP)/frozen/Adafruit_CircuitPython_ConnectionManager
FROZEN_MPY_DIRS += $(TOP)/frozen/Adafruit_CircuitPython_NeoPixel
FROZEN_MPY_DIRS += $(TOP)/frozen/Adafruit_CircuitPython_Display_Text
FROZEN_MPY_DIRS += $(TOP)/frozen/Adafruit_CircuitPython_FakeRequests
FROZEN_MPY_DIRS += $(TOP)/frozen/Adafruit_CircuitPython_Requests
