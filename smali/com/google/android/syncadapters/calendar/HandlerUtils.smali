.class public Lcom/google/android/syncadapters/calendar/HandlerUtils;
.super Ljava/lang/Object;
.source "HandlerUtils.java"


# static fields
.field static final DEFAULT_CALENDAR_INT_COLOR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-string v0, "#2952A3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/syncadapters/calendar/HandlerUtils;->DEFAULT_CALENDAR_INT_COLOR:I

    return-void
.end method

.method static getAccessLevel(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 68
    const-string v0, "reader"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/16 v0, 0xc8

    .line 83
    :goto_0
    return v0

    .line 71
    :cond_0
    const-string v0, "owner"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const/16 v0, 0x2bc

    goto :goto_0

    .line 74
    :cond_1
    const-string v0, "freeBusyReader"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const/16 v0, 0x64

    goto :goto_0

    .line 77
    :cond_2
    const-string v0, "writer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    const/16 v0, 0x258

    goto :goto_0

    .line 81
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static validateCalendarHexColor(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 99
    if-nez p0, :cond_0

    .line 106
    :goto_0
    return v0

    .line 103
    :cond_0
    :try_start_0
    const-string v2, "#"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static validateCalendarIntColor(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 117
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->validateCalendarHexColor(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
