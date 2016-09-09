.class Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;
.super Landroid/os/AsyncTask;
.source "GmsPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/chips/GmsPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoLoadTask"
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
.field private final mCallback:Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;

.field private final mEntry:Lcom/google/android/gms/chips/GmsRecipientEntry;

.field final synthetic this$0:Lcom/google/android/gms/chips/GmsPhotoManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/chips/GmsPhotoManager;Lcom/google/android/gms/chips/GmsRecipientEntry;Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->this$0:Lcom/google/android/gms/chips/GmsPhotoManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->mEntry:Lcom/google/android/gms/chips/GmsRecipientEntry;

    .line 300
    iput-object p3, p0, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->mCallback:Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;

    .line 301
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 293
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->doInBackground([Ljava/lang/Void;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->this$0:Lcom/google/android/gms/chips/GmsPhotoManager;

    # getter for: Lcom/google/android/gms/chips/GmsPhotoManager;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/google/android/gms/chips/GmsPhotoManager;->access$000(Lcom/google/android/gms/chips/GmsPhotoManager;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->this$0:Lcom/google/android/gms/chips/GmsPhotoManager;

    # getter for: Lcom/google/android/gms/chips/GmsPhotoManager;->mSession:Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;
    invoke-static {v1}, Lcom/google/android/gms/chips/GmsPhotoManager;->access$100(Lcom/google/android/gms/chips/GmsPhotoManager;)Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->mEntry:Lcom/google/android/gms/chips/GmsRecipientEntry;

    # invokes: Lcom/google/android/gms/chips/GmsPhotoManager;->loadPhotoBytes(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;Lcom/google/android/gms/chips/GmsRecipientEntry;)[B
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/chips/GmsPhotoManager;->access$200(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;Lcom/google/android/gms/chips/GmsRecipientEntry;)[B

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 293
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->this$0:Lcom/google/android/gms/chips/GmsPhotoManager;

    # getter for: Lcom/google/android/gms/chips/GmsPhotoManager;->mClosed:Z
    invoke-static {v0}, Lcom/google/android/gms/chips/GmsPhotoManager;->access$300(Lcom/google/android/gms/chips/GmsPhotoManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->mEntry:Lcom/google/android/gms/chips/GmsRecipientEntry;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/chips/GmsRecipientEntry;->setPhotoBytes([B)V

    .line 316
    if-eqz p1, :cond_2

    .line 317
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->this$0:Lcom/google/android/gms/chips/GmsPhotoManager;

    # getter for: Lcom/google/android/gms/chips/GmsPhotoManager;->mPhotoCacheMap:Landroid/support/v4/util/LruCache;
    invoke-static {v0}, Lcom/google/android/gms/chips/GmsPhotoManager;->access$400(Lcom/google/android/gms/chips/GmsPhotoManager;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->mEntry:Lcom/google/android/gms/chips/GmsRecipientEntry;

    invoke-virtual {v1}, Lcom/google/android/gms/chips/GmsRecipientEntry;->getPersonKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->mCallback:Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->mCallback:Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;

    invoke-interface {v0}, Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;->onPhotoBytesAsynchronouslyPopulated()V

    goto :goto_0

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->mCallback:Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsPhotoManager$PhotoLoadTask;->mCallback:Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;

    invoke-interface {v0}, Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;->onPhotoBytesAsyncLoadFailed()V

    goto :goto_0
.end method
