.class public Lcom/google/android/calendar/api/HabitUtil;
.super Ljava/lang/Object;
.source "HabitUtil.java"


# direct methods
.method static checkDeletionStatus(I)I
    .locals 2

    .prologue
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid type value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :pswitch_0
    return p0

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static checkInterval(I)I
    .locals 3

    .prologue
    .line 56
    packed-switch p0, :pswitch_data_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid type value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :pswitch_0
    return p0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static checkType(I)I
    .locals 2

    .prologue
    .line 82
    sparse-switch p0, :sswitch_data_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid type value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :sswitch_0
    return p0

    .line 82
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x102 -> :sswitch_0
        0x103 -> :sswitch_0
        0x104 -> :sswitch_0
        0x105 -> :sswitch_0
        0x106 -> :sswitch_0
        0x107 -> :sswitch_0
        0x108 -> :sswitch_0
        0x109 -> :sswitch_0
        0x10a -> :sswitch_0
        0x10b -> :sswitch_0
        0x10c -> :sswitch_0
        0x10d -> :sswitch_0
        0x10e -> :sswitch_0
        0x200 -> :sswitch_0
        0x201 -> :sswitch_0
        0x202 -> :sswitch_0
        0x203 -> :sswitch_0
        0x204 -> :sswitch_0
        0x205 -> :sswitch_0
        0x206 -> :sswitch_0
        0x207 -> :sswitch_0
        0x208 -> :sswitch_0
        0x209 -> :sswitch_0
        0x20a -> :sswitch_0
        0x20b -> :sswitch_0
        0x20c -> :sswitch_0
        0x300 -> :sswitch_0
        0x301 -> :sswitch_0
        0x302 -> :sswitch_0
        0x303 -> :sswitch_0
        0x304 -> :sswitch_0
        0x305 -> :sswitch_0
        0x306 -> :sswitch_0
        0x307 -> :sswitch_0
        0x308 -> :sswitch_0
        0x309 -> :sswitch_0
        0x30a -> :sswitch_0
        0x30b -> :sswitch_0
        0x30c -> :sswitch_0
        0x400 -> :sswitch_0
        0x401 -> :sswitch_0
        0x402 -> :sswitch_0
        0x403 -> :sswitch_0
        0x404 -> :sswitch_0
        0x405 -> :sswitch_0
        0x406 -> :sswitch_0
        0x407 -> :sswitch_0
        0x408 -> :sswitch_0
        0x409 -> :sswitch_0
        0x40a -> :sswitch_0
        0x40b -> :sswitch_0
        0x40c -> :sswitch_0
        0x40d -> :sswitch_0
        0x500 -> :sswitch_0
        0x501 -> :sswitch_0
        0x502 -> :sswitch_0
        0x503 -> :sswitch_0
        0x504 -> :sswitch_0
        0x505 -> :sswitch_0
        0x506 -> :sswitch_0
        0x507 -> :sswitch_0
        0x508 -> :sswitch_0
        0x509 -> :sswitch_0
        0x50a -> :sswitch_0
        0x50b -> :sswitch_0
        0x50c -> :sswitch_0
    .end sparse-switch
.end method

.method static checkVisibility(I)I
    .locals 2

    .prologue
    .line 44
    packed-switch p0, :pswitch_data_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid visibility value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :pswitch_0
    return p0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static contractsMatch(Lcom/google/android/calendar/api/HabitContract;Lcom/google/android/calendar/api/HabitContract;)Z
    .locals 4

    .prologue
    .line 167
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->getDurationMinutes()I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContract;->getDurationMinutes()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 168
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->getInterval()I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContract;->getInterval()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 169
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->getNumInstancesPerInterval()I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContract;->getNumInstancesPerInterval()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 170
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isAnyDayTimeAcceptable()Z

    move-result v0

    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContract;->isAnyDayTimeAcceptable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 171
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isMorningPreferable()Z

    move-result v0

    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContract;->isMorningPreferable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 172
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isAfternoonPreferable()Z

    move-result v0

    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContract;->isAfternoonPreferable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 173
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isEveningPreferable()Z

    move-result v0

    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContract;->isEveningPreferable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 174
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->getUntilMillisUtc()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContract;->getUntilMillisUtc()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getParentType(I)I
    .locals 1

    .prologue
    .line 20
    const v0, 0xff00

    and-int/2addr v0, p0

    return v0
.end method

.method static intToHabitInstanceStatus(I)I
    .locals 3

    .prologue
    .line 68
    packed-switch p0, :pswitch_data_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid type value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_0
    return p0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isSubtype(I)Z
    .locals 1

    .prologue
    .line 27
    const v0, -0xff01

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
