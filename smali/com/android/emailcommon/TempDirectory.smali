.class public Lcom/android/emailcommon/TempDirectory;
.super Ljava/lang/Object;
.source "TempDirectory.java"


# static fields
.field private static sTempDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/emailcommon/TempDirectory;->sTempDirectory:Ljava/io/File;

    return-void
.end method

.method public static setTempDirectory(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/TempDirectory;->sTempDirectory:Ljava/io/File;

    .line 32
    return-void
.end method
