.class public Lcom/google/api/client/extensions/android/AndroidUtils;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# direct methods
.method public static checkMinimumSdkLevel(I)V
    .locals 5

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/api/client/extensions/android/AndroidUtils;->isMinimumSdkLevel(I)Z

    move-result v0

    const-string v1, "running on Android SDK level %s but requires minimum %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 47
    invoke-static {v0, v1, v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static isMinimumSdkLevel(I)Z
    .locals 1

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
