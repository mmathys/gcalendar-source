.class public Lcom/google/android/gm/drive/FixPermissionRunnable;
.super Ljava/lang/Object;
.source "FixPermissionRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mFix:Lcom/google/android/gm/drive/PotentialFix;

.field private final mRole:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/android/gm/drive/FixPermissionRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/drive/FixPermissionRunnable;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/gm/drive/FixPermissionRunnable;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/google/android/gm/drive/FixPermissionRunnable;->mAccount:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/google/android/gm/drive/FixPermissionRunnable;->mFix:Lcom/google/android/gm/drive/PotentialFix;

    .line 30
    iput-object p4, p0, Lcom/google/android/gm/drive/FixPermissionRunnable;->mRole:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionRunnable;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/ConscryptUtils;->installSecurityProvider(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/google/android/apiary/GoogleRequestInitializer;

    iget-object v1, p0, Lcom/google/android/gm/drive/FixPermissionRunnable;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "oauth2:https://www.googleapis.com/auth/drive"

    sget-object v3, Lcom/google/android/gm/drive/FixPermissionRunnable;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apiary/GoogleRequestInitializer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/google/android/gm/drive/FixPermissionRunnable;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apiary/GoogleRequestInitializer;->setEmail(Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/google/api/services/drive/Drive$Builder;

    new-instance v2, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v2}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    new-instance v3, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v3}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    invoke-direct {v1, v2, v3, v0}, Lcom/google/api/services/drive/Drive$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    const-string v0, "Android Calendar"

    .line 44
    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Builder;->build()Lcom/google/api/services/drive/Drive;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/google/api/services/drive/model/FixPermissionsRequest;

    invoke-direct {v1}, Lcom/google/api/services/drive/model/FixPermissionsRequest;-><init>()V

    .line 47
    iget-object v2, p0, Lcom/google/android/gm/drive/FixPermissionRunnable;->mFix:Lcom/google/android/gm/drive/PotentialFix;

    invoke-virtual {v2}, Lcom/google/android/gm/drive/PotentialFix;->getOptionType()Ljava/lang/String;

    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/google/android/gm/drive/FixPermissionRunnable;->mFix:Lcom/google/android/gm/drive/PotentialFix;

    invoke-virtual {v3}, Lcom/google/android/gm/drive/PotentialFix;->getFixableRecipientEmailAddresses()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/services/drive/model/FixPermissionsRequest;->setRecipientEmailAddresses(Ljava/util/List;)Lcom/google/api/services/drive/model/FixPermissionsRequest;

    .line 49
    iget-object v3, p0, Lcom/google/android/gm/drive/FixPermissionRunnable;->mFix:Lcom/google/android/gm/drive/PotentialFix;

    invoke-virtual {v3}, Lcom/google/android/gm/drive/PotentialFix;->getFixableFileIds()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/services/drive/model/FixPermissionsRequest;->setFileIds(Ljava/util/List;)Lcom/google/api/services/drive/model/FixPermissionsRequest;

    .line 50
    iget-object v3, p0, Lcom/google/android/gm/drive/FixPermissionRunnable;->mRole:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/api/services/drive/model/FixPermissionsRequest;->setRole(Ljava/lang/String;)Lcom/google/api/services/drive/model/FixPermissionsRequest;

    .line 51
    invoke-virtual {v1, v2}, Lcom/google/api/services/drive/model/FixPermissionsRequest;->setFixOptionType(Ljava/lang/String;)Lcom/google/api/services/drive/model/FixPermissionsRequest;

    .line 54
    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/api/services/drive/Drive$Files;->fixPermissions(Lcom/google/api/services/drive/model/FixPermissionsRequest;)Lcom/google/api/services/drive/Drive$Files$FixPermissions;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Files$FixPermissions;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0
.end method
