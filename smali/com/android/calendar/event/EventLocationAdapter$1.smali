.class Lcom/android/calendar/event/EventLocationAdapter$1;
.super Landroid/os/AsyncTask;
.source "EventLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventLocationAdapter;->asyncLoadPhotoAndUpdateView(Landroid/net/Uri;Landroid/widget/ImageView;)V
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventLocationAdapter;

.field final synthetic val$contactPhotoUri:Landroid/net/Uri;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventLocationAdapter;Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/calendar/event/EventLocationAdapter$1;->this$0:Lcom/android/calendar/event/EventLocationAdapter;

    iput-object p2, p0, Lcom/android/calendar/event/EventLocationAdapter$1;->val$contactPhotoUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/calendar/event/EventLocationAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 328
    iget-object v1, p0, Lcom/android/calendar/event/EventLocationAdapter$1;->this$0:Lcom/android/calendar/event/EventLocationAdapter;

    .line 329
    # getter for: Lcom/android/calendar/event/EventLocationAdapter;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/calendar/event/EventLocationAdapter;->access$500(Lcom/android/calendar/event/EventLocationAdapter;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/EventLocationAdapter$1;->val$contactPhotoUri:Landroid/net/Uri;

    .line 328
    invoke-static {v1, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_0

    .line 331
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/android/calendar/event/EventLocationAdapter$1;->this$0:Lcom/android/calendar/event/EventLocationAdapter;

    # getter for: Lcom/android/calendar/event/EventLocationAdapter;->mPhotoCache:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/calendar/event/EventLocationAdapter;->access$600(Lcom/android/calendar/event/EventLocationAdapter;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/EventLocationAdapter$1;->val$contactPhotoUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 324
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventLocationAdapter$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 342
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EventLocationAdapter$1;->val$contactPhotoUri:Landroid/net/Uri;

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 345
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 324
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventLocationAdapter$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
