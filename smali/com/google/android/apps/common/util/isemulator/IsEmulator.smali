.class public Lcom/google/android/apps/common/util/isemulator/IsEmulator;
.super Ljava/lang/Object;
.source "IsEmulator.java"


# static fields
.field private static exception:Ljava/lang/Exception;

.field private static isEmulator:Ljava/lang/Boolean;


# direct methods
.method public static isEmulator()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 27
    sget-object v1, Lcom/google/android/apps/common/util/isemulator/IsEmulator;->isEmulator:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 28
    sget-object v0, Lcom/google/android/apps/common/util/isemulator/IsEmulator;->isEmulator:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 54
    :goto_0
    return v0

    .line 31
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/util/isemulator/IsEmulator;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 32
    sget-object v0, Lcom/google/android/apps/common/util/isemulator/IsEmulator;->exception:Ljava/lang/Exception;

    throw v0

    .line 36
    :cond_1
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_4

    .line 38
    const-string v1, "sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "google_sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/util/isemulator/IsEmulator;->isEmulator:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_2
    sget-object v0, Lcom/google/android/apps/common/util/isemulator/IsEmulator;->isEmulator:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 39
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 42
    :cond_4
    :try_start_1
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    const-string v1, "HARDWARE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 44
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    const-string v1, "goldfish"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/util/isemulator/IsEmulator;->isEmulator:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 48
    :catch_0
    move-exception v0

    .line 50
    sput-object v0, Lcom/google/android/apps/common/util/isemulator/IsEmulator;->exception:Ljava/lang/Exception;

    .line 51
    throw v0
.end method

.method public static isProbablyEmulator()Z
    .locals 3

    .prologue
    .line 66
    :try_start_0
    invoke-static {}, Lcom/google/android/apps/common/util/isemulator/IsEmulator;->isEmulator()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 69
    :goto_0
    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v1, "IsEmulator"

    const-string v2, "Could not determine if emulator.  Assuming false."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method
