.class public Lcom/android/ex/chips/ChipsUtil;
.super Ljava/lang/Object;
.source "ChipsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;
    }
.end annotation


# static fields
.field public static final REQUIRED_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/ex/chips/ChipsUtil;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/android/ex/chips/ChipsUtil;->isRunningMOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPermissions(Landroid/content/Context;Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 80
    sget-object v4, Lcom/android/ex/chips/ChipsUtil;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    array-length v5, v4

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    .line 82
    invoke-static {p0, v6}, Lcom/android/ex/chips/ChipsUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    .line 83
    :goto_1
    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1, v6, v2}, Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;->onPermissionCheck(Ljava/lang/String;Z)V

    .line 86
    :cond_0
    if-nez v2, :cond_2

    .line 90
    :goto_2
    return v0

    :cond_1
    move v2, v0

    .line 82
    goto :goto_1

    .line 80
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 90
    goto :goto_2
.end method

.method public static isRunningMOrLater()Z
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
