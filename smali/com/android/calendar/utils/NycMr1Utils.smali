.class public Lcom/android/calendar/utils/NycMr1Utils;
.super Ljava/lang/Object;
.source "NycMr1Utils.java"


# direct methods
.method public static isNycMr1()Z
    .locals 2

    .prologue
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
