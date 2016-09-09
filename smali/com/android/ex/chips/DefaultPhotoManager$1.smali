.class Lcom/android/ex/chips/DefaultPhotoManager$1;
.super Landroid/os/AsyncTask;
.source "DefaultPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/DefaultPhotoManager;->fetchPhotoAsync(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/DefaultPhotoManager;

.field final synthetic val$callback:Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;

.field final synthetic val$entry:Lcom/android/ex/chips/RecipientEntry;

.field final synthetic val$photoThumbnailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/DefaultPhotoManager;Landroid/net/Uri;Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/ex/chips/DefaultPhotoManager$1;->this$0:Lcom/android/ex/chips/DefaultPhotoManager;

    iput-object p2, p0, Lcom/android/ex/chips/DefaultPhotoManager$1;->val$photoThumbnailUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/ex/chips/DefaultPhotoManager$1;->val$entry:Lcom/android/ex/chips/RecipientEntry;

    iput-object p4, p0, Lcom/android/ex/chips/DefaultPhotoManager$1;->val$callback:Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/ex/chips/DefaultPhotoManager$1;->doInBackground([Ljava/lang/Void;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/android/ex/chips/DefaultPhotoManager$1;->this$0:Lcom/android/ex/chips/DefaultPhotoManager;

    # getter for: Lcom/android/ex/chips/DefaultPhotoManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/ex/chips/DefaultPhotoManager;->access$000(Lcom/android/ex/chips/DefaultPhotoManager;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/DefaultPhotoManager$1;->val$photoThumbnailUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/ex/chips/DefaultPhotoManager$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_2

    .line 96
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 100
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_0
    :goto_0
    return-object v3

    .line 100
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 108
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/chips/DefaultPhotoManager$1;->this$0:Lcom/android/ex/chips/DefaultPhotoManager;

    # getter for: Lcom/android/ex/chips/DefaultPhotoManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/ex/chips/DefaultPhotoManager;->access$000(Lcom/android/ex/chips/DefaultPhotoManager;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/DefaultPhotoManager$1;->val$photoThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    .line 111
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 112
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    :goto_1
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 116
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 119
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 121
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/ex/chips/DefaultPhotoManager$1;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/ex/chips/DefaultPhotoManager$1;->val$entry:Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 133
    if-eqz p1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/ex/chips/DefaultPhotoManager$1;->this$0:Lcom/android/ex/chips/DefaultPhotoManager;

    # getter for: Lcom/android/ex/chips/DefaultPhotoManager;->mPhotoCacheMap:Landroid/support/v4/util/LruCache;
    invoke-static {v0}, Lcom/android/ex/chips/DefaultPhotoManager;->access$100(Lcom/android/ex/chips/DefaultPhotoManager;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/DefaultPhotoManager$1;->val$photoThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/ex/chips/DefaultPhotoManager$1;->val$callback:Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/ex/chips/DefaultPhotoManager$1;->val$callback:Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;

    invoke-interface {v0}, Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;->onPhotoBytesAsynchronouslyPopulated()V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/DefaultPhotoManager$1;->val$callback:Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/ex/chips/DefaultPhotoManager$1;->val$callback:Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;

    invoke-interface {v0}, Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;->onPhotoBytesAsyncLoadFailed()V

    goto :goto_0
.end method
