.class public Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;
.super Ljava/lang/Object;
.source "BirthdaySetting.java"


# instance fields
.field private mIncludeGplusBirthday:Z

.field private mVisibility:Z


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 47
    iput-boolean v2, p0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->mVisibility:Z

    .line 58
    :goto_0
    return-void

    .line 49
    :cond_0
    if-nez p1, :cond_1

    .line 50
    iput-boolean v1, p0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->mVisibility:Z

    .line 51
    iput-boolean v1, p0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->mIncludeGplusBirthday:Z

    goto :goto_0

    .line 52
    :cond_1
    if-ne p1, v1, :cond_2

    .line 53
    iput-boolean v1, p0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->mVisibility:Z

    .line 54
    iput-boolean v2, p0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->mIncludeGplusBirthday:Z

    goto :goto_0

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal BirthdaySetting mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-boolean v0, p1, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->mVisibility:Z

    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->mVisibility:Z

    .line 42
    iget-boolean v0, p1, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->mIncludeGplusBirthday:Z

    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->mIncludeGplusBirthday:Z

    .line 43
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->mVisibility:Z

    .line 37
    iput-boolean p2, p0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->mIncludeGplusBirthday:Z

    .line 38
    return-void
.end method

.method static createFromCursor(Landroid/database/Cursor;)Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 61
    const-string v2, "settingBirthdayVisibility"

    .line 62
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    .line 63
    :goto_0
    if-eqz v2, :cond_1

    const-string v3, "settingBirthdayIncludeGplus"

    .line 64
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 63
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 65
    :goto_1
    new-instance v1, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    invoke-direct {v1, v2, v0}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;-><init>(ZZ)V

    return-object v1

    :cond_0
    move v2, v1

    .line 62
    goto :goto_0

    :cond_1
    move v0, v1

    .line 63
    goto :goto_1
.end method

.method public static getMissingMode()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    instance-of v1, p1, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    if-eqz v1, :cond_0

    .line 71
    check-cast p1, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    .line 72
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->getMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->getMode()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 75
    :cond_0
    return v0
.end method

.method public getIncludeGplusBirthday()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->mIncludeGplusBirthday:Z

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->mVisibility:Z

    if-eqz v0, :cond_1

    .line 85
    iget-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->mIncludeGplusBirthday:Z

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 88
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getVisibility()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->mVisibility:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->getMode()I

    move-result v0

    return v0
.end method
