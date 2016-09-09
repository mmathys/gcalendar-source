.class public Lcom/google/android/gm/drive/CheckPermissionsLoader;
.super Lcom/android/mail/ui/MailAsyncTaskLoader;
.source "CheckPermissionsLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/MailAsyncTaskLoader",
        "<",
        "Lcom/google/android/gm/drive/CheckPermissionsResults;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mFileIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/android/gm/drive/CheckPermissionsLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/drive/CheckPermissionsLoader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/mail/ui/MailAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 34
    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/CheckPermissionsLoader;->mAccount:Ljava/lang/String;

    .line 35
    const-string v0, "recipients"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/CheckPermissionsLoader;->mRecipients:Ljava/util/ArrayList;

    .line 36
    const-string v0, "fileIds"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/CheckPermissionsLoader;->mFileIds:Ljava/util/ArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/google/android/gm/drive/CheckPermissionsResults;
    .locals 7

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/drive/CheckPermissionsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/ConscryptUtils;->installSecurityProvider(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/google/android/apiary/GoogleRequestInitializer;

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gm/drive/CheckPermissionsLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "oauth2:https://www.googleapis.com/auth/drive"

    sget-object v3, Lcom/google/android/gm/drive/CheckPermissionsLoader;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apiary/GoogleRequestInitializer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/google/android/gm/drive/CheckPermissionsLoader;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apiary/GoogleRequestInitializer;->setEmail(Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/google/api/services/drive/Drive$Builder;

    new-instance v2, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v2}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    new-instance v3, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v3}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    invoke-direct {v1, v2, v3, v0}, Lcom/google/api/services/drive/Drive$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    const-string v0, "Android Calendar"

    .line 50
    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Builder;->build()Lcom/google/api/services/drive/Drive;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/google/api/services/drive/model/CheckPermissionsRequest;

    invoke-direct {v1}, Lcom/google/api/services/drive/model/CheckPermissionsRequest;-><init>()V

    .line 53
    iget-object v2, p0, Lcom/google/android/gm/drive/CheckPermissionsLoader;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/api/services/drive/model/CheckPermissionsRequest;->setRecipientEmailAddresses(Ljava/util/List;)Lcom/google/api/services/drive/model/CheckPermissionsRequest;

    .line 54
    iget-object v2, p0, Lcom/google/android/gm/drive/CheckPermissionsLoader;->mFileIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/api/services/drive/model/CheckPermissionsRequest;->setFileIds(Ljava/util/List;)Lcom/google/api/services/drive/model/CheckPermissionsRequest;

    .line 55
    const-string v2, "READER"

    invoke-virtual {v1, v2}, Lcom/google/api/services/drive/model/CheckPermissionsRequest;->setRole(Ljava/lang/String;)Lcom/google/api/services/drive/model/CheckPermissionsRequest;

    .line 57
    sget-object v2, Lcom/google/android/gm/drive/CheckPermissionsLoader;->LOG_TAG:Ljava/lang/String;

    const-string v3, "check permissions request: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/google/api/services/drive/model/CheckPermissionsRequest;->toPrettyString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/api/services/drive/Drive$Files;->checkPermissions(Lcom/google/api/services/drive/model/CheckPermissionsRequest;)Lcom/google/api/services/drive/Drive$Files$CheckPermissions;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Files$CheckPermissions;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/CheckPermissionsResponse;

    .line 62
    sget-object v1, Lcom/google/android/gm/drive/CheckPermissionsLoader;->LOG_TAG:Ljava/lang/String;

    const-string v2, "check permissions response: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse;->toPrettyString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 65
    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse;->getFixOptions()Ljava/util/List;

    move-result-object v1

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    if-eqz v1, :cond_2

    .line 70
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;

    .line 72
    invoke-virtual {v1}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->getOptionType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gm/drive/PotentialFix;->isSupportedFixOption(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    new-instance v4, Lcom/google/android/gm/drive/PotentialFix;

    invoke-direct {v4, v1}, Lcom/google/android/gm/drive/PotentialFix;-><init>(Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 85
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 77
    :cond_2
    new-instance v1, Lcom/google/android/gm/drive/CheckPermissionsResults;

    .line 78
    invoke-virtual {v0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse;->getFixabilitySummaryState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gm/drive/CheckPermissionsResults;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 77
    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/android/gm/drive/CheckPermissionsLoader;->loadInBackground()Lcom/google/android/gm/drive/CheckPermissionsResults;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Lcom/google/android/gm/drive/CheckPermissionsResults;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/gm/drive/CheckPermissionsResults;

    invoke-virtual {p0, p1}, Lcom/google/android/gm/drive/CheckPermissionsLoader;->onDiscardResult(Lcom/google/android/gm/drive/CheckPermissionsResults;)V

    return-void
.end method
