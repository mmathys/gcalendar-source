.class public Lcom/android/calendar/newapi/segment/contract/ContractUtils;
.super Ljava/lang/Object;
.source "ContractUtils.java"


# direct methods
.method public static supportsContract(Lcom/google/android/calendar/api/HabitContract;)Z
    .locals 2

    .prologue
    .line 15
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->getInterval()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
