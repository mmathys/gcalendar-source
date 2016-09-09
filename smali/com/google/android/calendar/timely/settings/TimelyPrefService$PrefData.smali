.class final Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefData;
.super Ljava/lang/Object;
.source "TimelyPrefService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/TimelyPrefService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrefData"
.end annotation


# instance fields
.field final color:Lcom/google/calendar/v2/client/service/api/common/Color;


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_0
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Color;->isValidHexColorString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Color;->fromHexString(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    .line 64
    :goto_0
    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefData;->color:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 65
    return-void

    .line 64
    :cond_1
    const v0, -0xbd296e

    invoke-static {v0}, Lcom/android/calendar/Utils;->intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    goto :goto_0
.end method
