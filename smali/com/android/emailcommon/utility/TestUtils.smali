.class public Lcom/android/emailcommon/utility/TestUtils;
.super Ljava/lang/Object;
.source "TestUtils.java"


# direct methods
.method public static isRunningInTest()Z
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    invoke-static {}, Lcom/android/emailcommon/utility/TestUtils;->isRunningRobolectric()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 16
    :goto_0
    return v0

    .line 18
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRunningRobolectric()Z
    .locals 2

    .prologue
    .line 25
    const-string v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
