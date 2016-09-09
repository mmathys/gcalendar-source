.class public Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;
.super Lcom/android/calendar/AccountPhotoFactory;
.source "TimelyAccountPhotoFactory.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;,
        Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;
    }
.end annotation


# static fields
.field private static sPlaceholder:Landroid/graphics/Bitmap;


# instance fields
.field private mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mClosed:Z

.field private mContext:Landroid/content/Context;

.field private final mImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/calendar/AccountPhotoFactory;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mImages:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mRequests:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->decodeFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->isRequestStale(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mImages:Ljava/util/HashMap;

    return-object v0
.end method

.method private static decodeFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private enqueueRequest(Landroid/widget/ImageView;Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;)V
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->removePendingRequest(Landroid/widget/ImageView;)V

    .line 132
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->processNextRequest()V

    .line 138
    :cond_0
    return-void
.end method

.method private isRequestStale(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;)Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p1, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->view:Landroid/widget/ImageView;

    .line 208
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processNextRequest()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "TimelyAccountPhoto"

    const-string v1, "processing next request, but list is empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;

    invoke-virtual {v0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->load()V

    goto :goto_0
.end method


# virtual methods
.method public getPlaceholder(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->sPlaceholder:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 274
    invoke-super {p0, p1}, Lcom/android/calendar/AccountPhotoFactory;->getPlaceholder(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/extensions/ImageUtils;->frameBitmapInCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->sPlaceholder:Landroid/graphics/Bitmap;

    .line 276
    :cond_0
    sget-object v0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->sPlaceholder:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;-><init>()V

    const/16 v1, 0x8b

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;->setClientApplicationId(I)Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;->build()Lcom/google/android/gms/people/People$PeopleOptions1p;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/people/People;->API_1P:Lcom/google/android/gms/common/api/Api;

    .line 92
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 96
    iput-object p1, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method public loadAccountPhoto(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mImages:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mImages:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;-><init>(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p2, v0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->enqueueRequest(Landroid/widget/ImageView;Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;)V

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->processNextRequest()V

    .line 160
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    .prologue
    .line 168
    const-string v0, "TimelyAccountPhoto"

    const-string v1, "in onConnectionFailed: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 169
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public onImageLoaded(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;)V
    .locals 4

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 185
    iget-boolean v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 200
    iget-boolean v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClosed:Z

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->processNextRequest()V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    :try_start_1
    invoke-direct {p0, p3}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->isRequestStale(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-boolean v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClosed:Z

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->processNextRequest()V

    goto :goto_0

    .line 194
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_4

    .line 195
    :cond_3
    const-string v0, "TimelyAccountPhoto"

    const-string v1, "Avatar loaded: status=%s  pfd=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 198
    :cond_4
    new-instance v0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;

    invoke-direct {v0, p0, p3, p2}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;-><init>(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;Landroid/os/ParcelFileDescriptor;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    iget-boolean v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClosed:Z

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->processNextRequest()V

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClosed:Z

    if-nez v1, :cond_5

    .line 201
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->processNextRequest()V

    :cond_5
    throw v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClosed:Z

    .line 105
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClosed:Z

    .line 116
    return-void
.end method

.method public removePendingRequest(Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 146
    const/4 v0, 0x0

    move v1, v0

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;

    iget-object v0, v0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->view:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 154
    :cond_1
    return-void
.end method
