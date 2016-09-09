.class public Lcom/android/ex/chips/DefaultPhotoManager;
.super Ljava/lang/Object;
.source "DefaultPhotoManager.java"

# interfaces
.implements Lcom/android/ex/chips/PhotoManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/DefaultPhotoManager$PhotoQuery;
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mPhotoCacheMap:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/ex/chips/DefaultPhotoManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/ex/chips/DefaultPhotoManager;->mPhotoCacheMap:Landroid/support/v4/util/LruCache;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/ex/chips/DefaultPhotoManager;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/ex/chips/DefaultPhotoManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ex/chips/DefaultPhotoManager;)Landroid/support/v4/util/LruCache;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/ex/chips/DefaultPhotoManager;->mPhotoCacheMap:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method private fetchPhotoAsync(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;)V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/android/ex/chips/DefaultPhotoManager$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/ex/chips/DefaultPhotoManager$1;-><init>(Lcom/android/ex/chips/DefaultPhotoManager;Landroid/net/Uri;Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;)V

    .line 143
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    return-void
.end method


# virtual methods
.method public populatePhotoBytesAsync(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;)V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/android/ex/chips/DefaultPhotoManager;->mPhotoCacheMap:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 68
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 70
    if-eqz p2, :cond_0

    .line 71
    invoke-interface {p2}, Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;->onPhotoBytesPopulated()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/android/ex/chips/DefaultPhotoManager;->fetchPhotoAsync(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;)V

    goto :goto_0

    .line 80
    :cond_2
    if-eqz p2, :cond_0

    .line 81
    invoke-interface {p2}, Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;->onPhotoBytesAsyncLoadFailed()V

    goto :goto_0
.end method
