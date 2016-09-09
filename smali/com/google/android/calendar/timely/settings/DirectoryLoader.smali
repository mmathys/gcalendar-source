.class public Lcom/google/android/calendar/timely/settings/DirectoryLoader;
.super Landroid/content/AsyncTaskLoader;
.source "DirectoryLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method private static directoryForLocale(Landroid/content/Context;Ljava/lang/String;)Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;
    .locals 3

    .prologue
    .line 48
    :try_start_0
    const-string v0, "directory/directorydata_%s.pb"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 50
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/IOUtils;->readInputStreamFully(Ljava/io/InputStream;Z)[B

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->parseFrom([B)Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadDirectory(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/calendar/timely/settings/DirectoryLoader;->directoryForLocale(Landroid/content/Context;Ljava/lang/String;)Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;

    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/calendar/timely/settings/DirectoryLoader;->directoryForLocale(Landroid/content/Context;Ljava/lang/String;)Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;

    move-result-object v0

    .line 42
    :cond_0
    return-object v0
.end method


# virtual methods
.method public loadInBackground()Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/DirectoryLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/calendar/timely/settings/DirectoryLoader;->loadDirectory(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/DirectoryLoader;->loadInBackground()Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/DirectoryLoader;->forceLoad()V

    .line 21
    return-void
.end method
