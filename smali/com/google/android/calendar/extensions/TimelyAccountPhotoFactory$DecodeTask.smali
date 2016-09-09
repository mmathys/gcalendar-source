.class Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;
.super Landroid/os/AsyncTask;
.source "TimelyAccountPhotoFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mRequest:Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;

.field final synthetic this$0:Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->this$0:Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 216
    iput-object p2, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->mRequest:Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;

    .line 217
    iput-object p3, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 218
    return-void
.end method

.method private closeResources()V
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string v1, "TimelyAccountPhoto"

    const-string v2, "IOExcpetion when closing resources"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->this$0:Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;

    iget-object v1, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->this$0:Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;

    # getter for: Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->access$100(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->getPlaceholder(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/extensions/ImageUtils;->frameBitmapInCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 232
    :goto_0
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->closeResources()V

    .line 230
    return-object v0

    .line 227
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 228
    # invokes: Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->decodeFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->access$200(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/extensions/ImageUtils;->frameBitmapInCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->closeResources()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->closeResources()V

    .line 263
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->this$0:Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;

    iget-object v1, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->mRequest:Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;

    # invokes: Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->isRequestStale(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;)Z
    invoke-static {v0, v1}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->access$300(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->closeResources()V

    .line 258
    :goto_0
    return-void

    .line 252
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->mRequest:Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;

    iget-object v0, v0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->view:Landroid/widget/ImageView;

    .line 253
    iget-object v1, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->this$0:Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;

    # getter for: Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mImages:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->access$400(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->mRequest:Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;

    iget-object v2, v2, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->closeResources()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->closeResources()V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$DecodeTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
