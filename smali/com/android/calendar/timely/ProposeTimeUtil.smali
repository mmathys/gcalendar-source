.class public Lcom/android/calendar/timely/ProposeTimeUtil;
.super Ljava/lang/Object;
.source "ProposeTimeUtil.java"


# direct methods
.method public static isProposeTimeSupported(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 24
    const-string v1, "com.google.android.gm"

    invoke-static {p0, v1}, Lcom/android/calendar/timely/ExchangeUtil;->isEasServiceResolvable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v0

    .line 27
    :cond_1
    const-string v1, "com.google.android.gm.exchange"

    const v2, 0x7b53a

    invoke-static {p0, v1, v2}, Lcom/android/calendar/Utils;->isApkVersionAtLeast(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.google.android.gm.exchange"

    .line 29
    invoke-static {p0, v1}, Lcom/android/calendar/timely/ExchangeUtil;->isEasServiceResolvable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
