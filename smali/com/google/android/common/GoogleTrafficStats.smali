.class public Lcom/google/android/common/GoogleTrafficStats;
.super Ljava/lang/Object;
.source "GoogleTrafficStats.java"


# direct methods
.method public static getDomainType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 33
    const-string v0, "@google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/high16 v0, 0x30000000

    .line 40
    :goto_0
    return v0

    .line 35
    :cond_0
    const-string v0, "@gmail.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "@googlemail.com"

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    :cond_1
    const/high16 v0, 0x10000000

    goto :goto_0

    .line 40
    :cond_2
    const/high16 v0, 0x20000000

    goto :goto_0
.end method
