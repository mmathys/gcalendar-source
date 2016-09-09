.class public Lcom/google/calendar/v2/client/service/api/common/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventLabelColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->getTimelyPresets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFallbackCalendarColorPair()Lcom/google/calendar/v2/client/service/api/common/ColorPair;
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->getFallbackForEvents()Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    move-result-object v0

    return-object v0
.end method

.method public static getFallbackTasksColorPair()Lcom/google/calendar/v2/client/service/api/common/ColorPair;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->getFallbackForTasks()Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    move-result-object v0

    return-object v0
.end method

.method public static getPresetCalendarColorPairs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/ColorPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->getTimelyPresets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
