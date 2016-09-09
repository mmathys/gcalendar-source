.class public Lcom/google/android/gms/chips/GmsPhotoManager;
.super Ljava/lang/Object;
.source "GmsPhotoManager.java"

# interfaces
.implements Lcom/android/ex/chips/PhotoManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;
    }
.end annotation


# instance fields
.field private final mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mClosed:Z

.field private final mDefaultPhotoManager:Lcom/android/ex/chips/DefaultPhotoManager;

.field private final mPhotoCacheMap:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mSession:Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/ContentResolver;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/chips/GmsPhotoManager;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/ContentResolver;Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/ContentResolver;Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager;->mClosed:Z

    .line 59
    iput-object p1, p0, Lcom/google/android/gms/chips/GmsPhotoManager;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 60
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager;->mPhotoCacheMap:Landroid/support/v4/util/LruCache;

    .line 61
    new-instance v0, Lcom/android/ex/chips/DefaultPhotoManager;

    invoke-direct {v0, p2}, Lcom/android/ex/chips/DefaultPhotoManager;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager;->mDefaultPhotoManager:Lcom/android/ex/chips/DefaultPhotoManager;

    .line 62
    iput-object p3, p0, Lcom/google/android/gms/chips/GmsPhotoManager;->mSession:Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gms/chips/GmsPhotoManager;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gms/chips/GmsPhotoManager;)Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager;->mSession:Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;Lcom/google/android/gms/chips/GmsRecipientEntry;)[B
    .locals 1

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/chips/GmsPhotoManager;->loadPhotoBytes(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;Lcom/google/android/gms/chips/GmsRecipientEntry;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gms/chips/GmsPhotoManager;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager;->mClosed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/gms/chips/GmsPhotoManager;)Landroid/support/v4/util/LruCache;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager;->mPhotoCacheMap:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method private static loadPhotoBytes(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;Lcom/google/android/gms/chips/GmsRecipientEntry;)[B
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    const-string v0, "GmsPhotoManager"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "GmsPhotoManager"

    const-string v2, "Client not connected."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    :goto_0
    return-object v1

    .line 147
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/chips/GmsRecipientEntry;->getAvatarReference()Lcom/google/android/gms/people/model/AvatarReference;

    move-result-object v0

    .line 148
    if-nez v0, :cond_3

    .line 149
    const-string v0, "GmsPhotoManager"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    const-string v0, "GmsPhotoManager"

    const-string v2, "AvatarReference is null."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/chips/GmsRecipientEntry;->getAutocompletion()Lcom/google/android/gms/chips/Autocomplete$Autocompletion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/chips/GmsPhotoManager;->loadYentaPhotoBytes(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;Lcom/google/android/gms/chips/GmsRecipientEntry;)[B

    move-result-object v1

    goto :goto_0

    .line 162
    :cond_3
    new-instance v0, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;-><init>()V

    .line 163
    invoke-virtual {v0, v2}, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;->setImageSize(I)Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v2}, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;->setAvatarOptions(I)Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/google/android/gms/people/Images$LoadImageOptions$Builder;->build()Lcom/google/android/gms/people/Images$LoadImageOptions;

    move-result-object v0

    .line 166
    sget-object v2, Lcom/google/android/gms/people/People;->ImageApi:Lcom/google/android/gms/people/Images;

    .line 167
    invoke-virtual {p2}, Lcom/google/android/gms/chips/GmsRecipientEntry;->getAvatarReference()Lcom/google/android/gms/people/model/AvatarReference;

    move-result-object v3

    invoke-interface {v2, p0, v3, v0}, Lcom/google/android/gms/people/Images;->loadByReference(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 168
    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 169
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/Images$LoadImageResult;

    .line 171
    invoke-interface {v0}, Lcom/google/android/gms/people/Images$LoadImageResult;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 172
    invoke-interface {v0}, Lcom/google/android/gms/people/Images$LoadImageResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_4

    .line 175
    const-string v3, "GmsPhotoManager"

    const-string v4, "Image load timed out."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_6

    .line 180
    :cond_5
    const-string v3, "GmsPhotoManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    const-string v3, "GmsPhotoManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1b

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Image loaded: status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  pfd="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 188
    :cond_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 191
    const/16 v0, 0x4000

    :try_start_0
    new-array v0, v0, [B

    .line 192
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :goto_1
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    .line 195
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    :goto_2
    :try_start_2
    const-string v4, "GmsPhotoManager"

    const-string v5, "Error reading photo input stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 206
    :goto_3
    if-eqz v2, :cond_a

    .line 208
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v1

    :cond_7
    :goto_4
    move-object v1, v0

    .line 215
    goto/16 :goto_0

    .line 197
    :cond_8
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 202
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 206
    :goto_5
    if-eqz v2, :cond_7

    .line 208
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 209
    :catch_1
    move-exception v1

    .line 210
    const-string v2, "GmsPhotoManager"

    const-string v3, "Error closing photo output stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 203
    :catch_2
    move-exception v1

    .line 204
    const-string v3, "GmsPhotoManager"

    const-string v4, "Error closing photo input stream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 203
    :catch_3
    move-exception v0

    .line 204
    const-string v3, "GmsPhotoManager"

    const-string v4, "Error closing photo input stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 209
    :catch_4
    move-exception v0

    .line 210
    const-string v2, "GmsPhotoManager"

    const-string v3, "Error closing photo output stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 211
    goto :goto_4

    .line 201
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 202
    :goto_6
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 206
    :goto_7
    if-eqz v2, :cond_9

    .line 208
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 211
    :cond_9
    :goto_8
    throw v0

    .line 203
    :catch_5
    move-exception v1

    .line 204
    const-string v3, "GmsPhotoManager"

    const-string v4, "Error closing photo input stream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 209
    :catch_6
    move-exception v1

    .line 210
    const-string v2, "GmsPhotoManager"

    const-string v3, "Error closing photo output stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 201
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 198
    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :cond_a
    move-object v0, v1

    goto :goto_4
.end method

.method private static loadYentaPhotoBytes(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;Lcom/google/android/gms/chips/GmsRecipientEntry;)[B
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 222
    invoke-virtual {p2}, Lcom/google/android/gms/chips/GmsRecipientEntry;->getPerson()Lcom/google/android/gms/chips/Autocomplete$Person;

    move-result-object v0

    .line 223
    new-instance v2, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoOptions;

    invoke-direct {v2, v3, v3}, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoOptions;-><init>(II)V

    .line 224
    invoke-interface {p1, p0, v0, v2}, Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;->loadPrimaryPhoto(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/chips/Autocomplete$Person;Lcom/google/android/gms/chips/Autocomplete$LoadPhotoOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 231
    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 232
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;

    .line 235
    invoke-virtual {v0}, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 236
    invoke-virtual {v0}, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    .line 239
    const-string v3, "GmsPhotoManager"

    const-string v4, "Image load timed out."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_4

    .line 244
    :cond_1
    const-string v3, "GmsPhotoManager"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 245
    const-string v3, "GmsPhotoManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1b

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Image loaded: status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  pfd="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v1

    .line 279
    :cond_3
    :goto_0
    return-object v0

    .line 252
    :cond_4
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 255
    const/16 v0, 0x4000

    :try_start_0
    new-array v0, v0, [B

    .line 256
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :goto_1
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 259
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    :goto_2
    :try_start_2
    const-string v4, "GmsPhotoManager"

    const-string v5, "Error reading photo input stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 266
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 270
    :goto_3
    if-eqz v2, :cond_7

    .line 272
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v1

    .line 275
    goto :goto_0

    .line 261
    :cond_5
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 266
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 270
    :goto_4
    if-eqz v2, :cond_3

    .line 272
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 273
    :catch_1
    move-exception v1

    .line 274
    const-string v2, "GmsPhotoManager"

    const-string v3, "Error closing photo output stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 267
    :catch_2
    move-exception v1

    .line 268
    const-string v3, "GmsPhotoManager"

    const-string v4, "Error closing photo input stream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 267
    :catch_3
    move-exception v0

    .line 268
    const-string v3, "GmsPhotoManager"

    const-string v4, "Error closing photo input stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 273
    :catch_4
    move-exception v0

    .line 274
    const-string v2, "GmsPhotoManager"

    const-string v3, "Error closing photo output stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 275
    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 266
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 270
    :goto_6
    if-eqz v2, :cond_6

    .line 272
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 275
    :cond_6
    :goto_7
    throw v0

    .line 267
    :catch_5
    move-exception v1

    .line 268
    const-string v3, "GmsPhotoManager"

    const-string v4, "Error closing photo input stream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 273
    :catch_6
    move-exception v1

    .line 274
    const-string v2, "GmsPhotoManager"

    const-string v3, "Error closing photo output stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 265
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 262
    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private validateInputAndCheckCache(Lcom/google/android/gms/chips/GmsRecipientEntry;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 109
    iget-boolean v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager;->mClosed:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 125
    :goto_0
    return v0

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/chips/GmsRecipientEntry;->getPersonKey()Ljava/lang/String;

    move-result-object v0

    .line 114
    if-nez v0, :cond_1

    .line 115
    const-string v0, "GmsPhotoManager"

    const-string v2, "GmsRecipientEntry has no person key"

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 116
    goto :goto_0

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/chips/GmsPhotoManager;->mPhotoCacheMap:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 120
    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {p1, v0}, Lcom/google/android/gms/chips/GmsRecipientEntry;->setPhotoBytes([B)V

    move v0, v1

    .line 122
    goto :goto_0

    .line 125
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public populatePhotoBytesAsync(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;)V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 68
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/google/android/gms/chips/GmsRecipientEntry;

    if-nez v0, :cond_2

    .line 70
    const-string v0, "GmsPhotoManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "GmsPhotoManager"

    const-string v1, "RecipientEntry is not a GmsRecipientEntry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager;->mDefaultPhotoManager:Lcom/android/ex/chips/DefaultPhotoManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/chips/DefaultPhotoManager;->populatePhotoBytesAsync(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;)V

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    check-cast p1, Lcom/google/android/gms/chips/GmsRecipientEntry;

    .line 78
    if-nez p1, :cond_3

    .line 79
    const-string v0, "GmsPhotoManager"

    const-string v1, "GmsRecipientEntry is null"

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    if-eqz p2, :cond_1

    .line 81
    invoke-interface {p2}, Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;->onPhotoBytesAsyncLoadFailed()V

    goto :goto_0

    .line 86
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/chips/GmsPhotoManager;->validateInputAndCheckCache(Lcom/google/android/gms/chips/GmsRecipientEntry;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    if-eqz p2, :cond_1

    .line 88
    invoke-interface {p2}, Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;->onPhotoBytesPopulated()V

    goto :goto_0

    .line 93
    :cond_4
    const-string v0, "GmsPhotoManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    const-string v0, "GmsPhotoManager"

    invoke-virtual {p1}, Lcom/google/android/gms/chips/GmsRecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No photo cache for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Fetch one asynchronously"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_5
    new-instance v0, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;-><init>(Lcom/google/android/gms/chips/GmsPhotoManager;Lcom/google/android/gms/chips/GmsRecipientEntry;Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
